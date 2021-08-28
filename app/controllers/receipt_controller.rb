class ReceiptController < ApplicationController
    def get_receipts
        user_id = params[:user_id]
        user = User.find_by(id: user_id)

        receipts = user.receipts

        serializer = ReceiptSerializer.new(receipts)

        render json: serializer.serializable_hash , status: 200
    end
end