function Alert(title, message, time, type)
	SendNUIMessage({
		action = 'open',
		title = title,
		type = type,
		message = message,
		time = time,
	})
end

RegisterNetEvent('lc_notify:Alert')
AddEventHandler('lc_notify:Alert', function(title, message, time, type)
	Alert(title, message, time, type)
end)

RegisterCommand('notify1', function()
	exports['lc_notify']:Alert("SMS", "<span style='color:#f38847'>George: </span> Cześć, wyślesz mi 200$?", 5000, 'notify')
	exports['lc_notify']:Alert("UDANE", "Wysłałeś <span style='color:#47cf73'>201€</span> do Georga!", 5000, 'notify')	
	exports['lc_notify']:Alert("BŁĄD", "Spróbuj ponownie pózniej", 5000, 'notify')
	exports['lc_notify']:Alert("INFORMACJA", "Kasyno zostało otwarte", 5000, 'notify')
	exports['lc_notify']:Alert("UWAGA", "Stajesz sie lekko zdenerwowany", 5000, 'notify')
end)

RegisterCommand('notify2', function()
	exports['lc_notify']:Alert("LORECODE.PL", "Test Notify!", 5000, 'notify')
end)

RegisterCommand('notify3', function()
	exports['lc_notify']:Alert("LORECODE.PL", "Lorem ipsum dolor sit amet consectetur adipisicing elit. Aut labore harum quibusdam hic saepe est eveniet a asperiores fugiat deleniti impedit nemo pariatur ratione obcaecati, non laborum voluptatem dicta totam.", 5000, 'notify')
end)
