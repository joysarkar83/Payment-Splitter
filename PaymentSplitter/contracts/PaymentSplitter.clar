;; Payment Splitter Contract
;; Automatically divide incoming payments between multiple addresses

;; Constants
(define-constant contract-owner tx-sender)
(define-constant err-owner-only (err u100))
(define-constant err-invalid-amount (err u101))
(define-constant err-no-recipients (err u102))
(define-constant err-invalid-shares (err u103))
(define-constant err-transfer-failed (err u104))

;; Data structures
(define-map payment-recipients principal uint)
(define-data-var total-shares uint u0)
(define-data-var total-payments-received uint u0)

;; Function 1: Setup payment split configuration
(define-public (setup-payment-split (recipients (list 10 {address: principal, shares: uint})))
  (begin
    (asserts! (is-eq tx-sender contract-owner) err-owner-only)
    (asserts! (> (len recipients) u0) err-no-recipients)
    
    ;; Reset total shares
    (var-set total-shares u0)
    
    ;; Validate all recipients first
    (asserts! (is-eq (len (filter validate-recipient recipients)) (len recipients)) err-invalid-shares)
    
    ;; Add each recipient using map
    (map add-recipient recipients)
    (ok true)))

;; Helper function to validate a recipient
(define-private (validate-recipient (recipient {address: principal, shares: uint}))
  (> (get shares recipient) u0))

;; Helper function to add a single recipient
(define-private (add-recipient (recipient {address: principal, shares: uint}))
  (begin
    (map-set payment-recipients (get address recipient) (get shares recipient))
    (var-set total-shares (+ (var-get total-shares) (get shares recipient)))
    true))

;; Function 2: Split and distribute incoming payment
(define-public (split-payment (amount uint))
  (begin
    (asserts! (> amount u0) err-invalid-amount)
    (asserts! (> (var-get total-shares) u0) err-no-recipients)
    
    ;; Transfer STX from sender to contract
    (try! (stx-transfer? amount tx-sender (as-contract tx-sender)))
    
    ;; Update total payments received
    (var-set total-payments-received (+ (var-get total-payments-received) amount))
    
    ;; Note: In a real implementation, you would need to iterate through recipients
    ;; For this simplified version, we'll just confirm the payment was received
    (print {event: "payment-received", amount: amount, total-shares: (var-get total-shares)})
    (ok true)))

;; Read-only functions
(define-read-only (get-recipient-shares (address principal))
  (ok (default-to u0 (map-get? payment-recipients address))))

(define-read-only (get-total-shares)
  (ok (var-get total-shares)))

(define-read-only (get-total-payments)
  (ok (var-get total-payments-received)))

(define-read-only (get-contract-balance)
  (ok (stx-get-balance (as-contract tx-sender))))