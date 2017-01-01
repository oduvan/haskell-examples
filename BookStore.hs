data BookInfo = Book Int String [String]
				deriving (Show)

data MagazineInfo = Magazine Int String [String]
					deriving (Show)

type CustomerID = Int
type ReviewBody = String

data BetterReview = BetterReview BookInfo CustomerID ReviewBody

type CardHolder = String
type CardNumber = String
type Address = [String]

data BillingInfo = CreditCard CardNumber CardHolder Address
				 | CashOnDelivery
				 | Invoice CustomerID
				 deriving (Show)

johnCard = CreditCard "2999...." "Alex" ["Dpepr", "England"]
meryCard = Invoice 1235

bookID (Book id _ _) = id

data Customer = Customer {
		customerID :: CustomerID,
		customerName :: String,
		customerAddress :: Address
	} deriving (Show)

newCustomer = Customer {
		customerID = 1,
		customerName = "Alex",
		customerAddress = ["Wiki Liz"]
	}
