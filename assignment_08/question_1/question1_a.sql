.open AuctionsDatabase.db 

.mode column
.headers on 
.output highest_bid.out 

SELECT 
    AuctionID,
    MAX(Bid) AS highest_bid
FROM Bids
GROUP BY AuctionID;

.output stdout
