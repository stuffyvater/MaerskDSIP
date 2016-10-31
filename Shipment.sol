contract Shipment
{
	mapping(address => bool) public whiteList;
	address public admin;
	struct Document{
		address author;
		string fingerprint;
	}
	mapping(uint => Document) public documents;
	
	event StakeholderWhitelisted(address stakeholder);
	event DocumentAmended(uint documentId, address author, string newFingerprint);
	
	function Shipment(address a){
		admin = a;
	}
	
	function whitelistStakeholder(address stakeholder) ifAdmin(msg.sender){
		whiteList[stakeholder] = true;
		StakeholderWhitelisted(stakeholder);
	}

	function amendDocument(uint documentId, string newFingerprint) ifWhitelisted(msg.sender)
	{
		documents[documentId] = Document(msg.sender, newFingerprint);
		DocumentAmended(documentId, msg.sender, newFingerprint);
	}
			
	modifier ifAdmin(address user)
	{
		if(admin != user) throw;
		_
	}
	
	modifier ifWhitelisted(address stakeholder)
	{
		if(whiteList[stakeholder] == false) throw;
		_
	}	
}
