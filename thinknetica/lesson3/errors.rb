class TrainNotFoundError < StandardError
end

class TrainAlreadyExist < StandardError
end

class StationNotFoundError < StandardError
end

class StationAlreadyExist < StandardError
end

class InvalidArgument < StandardError
end

class ChangeWagonsException < StandardError
end
