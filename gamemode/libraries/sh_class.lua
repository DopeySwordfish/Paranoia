	local Paranoia = Paranoia
	Paranoia.Class = {}
	Paranoia.Class.List = {}
	
if ( SERVER ) then
	
	Paranoia.Class.AddClass = function( name, id, model, primary, secondary, special )
		table.insert( Paranoia.Class.List, { name, id, model, primary, secondary, special } )
	end
	
end