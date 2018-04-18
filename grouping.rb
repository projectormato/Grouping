# 1年12 2年9 3年2 4年8(くじ対象者31)
# 班長・・・きしだ、まき、みぞしり、いけだ、さいとう、すぎもと、みやざき、やまぐち(8人)

# 班長の一覧
readers = ["Jackson", "Noah", "Lucas", "Sophia", "Olivia"]
# 各学年のくじ(自動でわりふったほうがいいかな)
kuzi_first = [1,2,3,4,5,6,7,8,1,5,2,4,6,7]
kuzi_second = [1,2,3,4,5,6,7,8,3]
kuzi_third = [6,7]
kuzi_fourth = [1,2,3,4,5,6,7,8]

while true
	target = [] # 引くべきくじ
	puts "学年を入力してください"
	input = gets.chomp # 入力した学年が入る
	case input # inputによって引くべきくじを決める
	when "1"
		target = kuzi_first
	when "2"
		target = kuzi_second
	when "3"
		target = kuzi_third
	when "4"
		target = kuzi_fourth
	when "ob"
		result = rand(readers.size)+1 # くじとかなくて適当にランダムなものを割り当ててる
		print "あなたは第",result,"班(", readers[result-1], ")です。", "\n"
		next # 2回処理されないように
	else
		puts "学年が適切じゃないよ！"
		next
	end

	# もうくじがない時(何かしらのミス時)
	if target.size == 0
		print "もう",input, "年にはくじが残ってないよ！\n"
		next
	end

	number = rand(target.size) # ランダムな抽選の結果(配列番号が入る)
	result = target[number] # ランダムな抽選の結果(班の番号が入る)
	print "あなたは第",result,"班(", readers[result-1], ")です。", "\n" # ここで班と班長を出力
	target.delete_at(number)
end
