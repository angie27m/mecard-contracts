;; title: me-card
;; version: 1.0.0
;; summary:
;; description:



;; traits
(impl-trait 'SP2PABAF9FTAJYNFZH93XENAJ8FVY99RRM50D2JG9.nft-trait.nft-trait)
;;

;; token definitions
;;

;; constants
(define-constant user-index u1)

;; errors
(define-constant ERR_INVALID_VALUE (err u2000))
(define-constant ERR_DUPLICATED_VALUE (err 2001))

;; data vars

;; data maps
(define-map user-data uint {    
                       name: (string-ascii 50),    
                       email: (string-ascii 100),    
                       phone: (string-ascii 15),    
                       position-profession: (string-ascii 100),    
                       website: (string-ascii 100),    
                       avatar: (string-ascii 100),    
                       portfolio-link: (string-ascii 100), })

;; public functions

;; Function to create the NFT with user data
(define-public (create-personal-card 
                    (name (string-ascii 50)) 
                    (email (string-ascii 100)) 
                    (phone (string-ascii 15)) 
                    (position-profession (string-ascii 100))
                    (website (string-ascii 100))
                    (avatar (string-ascii 100))
                    (portfolio-link (string-ascii 100))
                    (owner principal))
  (begin
    (map-set user-data user-index {name: name, email: email, phone: phone, position-profession: position-profession, website: website, avatar:avatar, portfolio-link:portfolio-link})
    (ok "data saved")
  )
)

;; use this function from NFT contract
;; SIP-009 function: Transfer NFT token to another owner.
;;(define-public (transfer (token-id uint) (sender principal) (recipient principal))
  ;;(begin
    ;; #[filter(sender)]
    ;;(asserts! (is-eq tx-sender sender) ERR_NOT_TOKEN_OWNER)
    ;;(nft-transfer? Your-NFT-Name token-id sender recipient)
  ;;)
;;)

;; read only functions
;;

;; private functions
;;

