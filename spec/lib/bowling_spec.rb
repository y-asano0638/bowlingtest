require "bowling"
describe "ボウリングのスコア計算" do
    #インスタンスの生成を共通化
    before do
        @game = Bowling.new
    end
        describe "全体の合計" do
            context "全ての投球がガターだった場合" do
                it "0になること" do
                    add_many_scores(20, 0)
                    expect(@game.total.score).to.eq 0
                end
        end
            context "全ての投球で1ピンずつ倒した場合" do
                it "20になること" do
                    add_many_scores(20, 1)
                    expect(@game.total.score).to.eq 20
                end
            end
        end
    end
    private
    # 複数回のスコア追加をまとめて実行する
    def add_many_scores(count, pins)
        count.times do
            @game.add_score(pins)
        end
    end
                    
                

# describe "ボウリングのスコア計算" do
#     describe "全体の合計" do
#         context "全ての投球がガターだった場合" do
#             it "0になること" do
#                 @game = Bowling.new
                
#                 20.times do
#                     @game.add_score(0)
#                 end
                
#                 expect(@game.total_score).to eq 0
#             end
#         end
        
#         context "全ての投球で1ピンずつ倒した場合" do
#             it "20になること" do
#                 @game = Bowling.new
                
#                 20.times do
#                     @game.add_score(1)
#                 end
                
#                 expect(@game.total_score).to eq 20
#             end
#         end
#     end
# end