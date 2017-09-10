# Instructor.create(username: 'admin', email: 'admin@m.com', password: '123123')
#
# Batch.create(code: 'sg-web-batch-4')
# Batch.create(code: 'sg-web-batch-3')
#
# for i in 1..10 do
#   Week.create(batch: Batch.first, number: i)
#   for j in 1..5 do
#     Daily.create(week: Week.find(i), day: j, date: Date.new(2017,8,13)+7*(i-1)+j)
#   end
# end
#
# LearningOutcome.create(description: 'Learning Outcome 1', target: 1)
# LearningOutcome.create(description: 'Learning Outcome 2', target: 2)
