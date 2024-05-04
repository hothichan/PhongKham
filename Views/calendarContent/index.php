<div class="calendar-content">
    <div><h2>Đơn đặt lịch khám</h2></div>
    <form action="#" class="form-schedule">
        <table>
            <thead>
                <th>
                    <img src="./public/img/doctor_1.jpg" alt="anh" id="avatar-doctor">
                    <p id="name-doctor">Bác sĩ Lê Nhật Minh</p>
                </th>
            </thead>
            <tbody>
                <tr>
                    <td>
                        <p>Họ tên bệnh nhân<span>*</span></p>
                        <input id="name" type="text">
                    </td>
                </tr>
                <tr>
                    <td>
                        <p>Giới tính<span>*</span></p>
                        <input id="radMan" type="radio" name="gender" checked="true"><span id="gender">Nam</span>
                        <input id="radWoman" type="radio" name="gender"><span id="gender">Nữ</span>
                    </td>
                </tr>
                <tr>
                    <td>
                        <p>Số điện thoại liên hệ<span>*</span></p>
                        <input id="phone-number" type="text" type="text">
                    </td>
                </tr>
                <tr>
                    <td>
                        <p>Năm sinh<span>*</span></p>
                        <input id="year-of-birth" type="number">
                    </td>
                </tr>
                <tr>
                    <td>
                        <p>Địa chỉ</p>
                        <input id="address" type="text">
                    </td>
                </tr>
                <tr>
                    <td>
                        <p>Chuyên khoa<span>*</span></p>
                        <input id="name-faculty" type="text" disabled value="Cơ xương khớp">
                    </td>
                </tr>
                <tr>
                    <td><p>Thời gian khám<span>*</span></p>
                        <input type="date" id="date">
                        <select id="time">
                            <option value="8-am">8:00</option>
                            <option value="9-am">9:00</option>
                            <option value="10-am">10:00</option>
                            <option value="11-am">11:00</option>
                            <option value="1-pm">13:00</option>
                            <option value="2-pm">14:00</option>
                            <option value="3-pm">15:00</option>
                            <option value="4-pm">16:00</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>
                        <p>Lý do khám</p>
                        <textarea id="reason" rows="4" cols="75"></textarea>
                    </td>
                </tr>
                <tr>
                    <td>
                        <p>Ghi chú</p>
                        <textarea id="note" rows="4" cols="75"></textarea>
                    </td>
                </tr>
                <tr>
                    <td id="notifi">
                        <i>Chú ý: <span>*</span> không được bỏ trống!</i>
                    </td>
                </tr>
                <tr>
                    <td>
                        <p style="color: #45C3D2;">Hình thức thanh toán</p>
                        <input type="radio" checked>Thanh toán sau tại phòng khám
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="container">
                            <p>Giá khám <span id="price">400.000</span></p>
                            <p>Phí đặt lịch <span id="cost">0</span></p>
                            <hr>
                            <p>Tổng cộng <span id="totalPrice">400.000</span></p>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td><button type="submit" id="btn-submit">Xác nhận đặt khám</button></td>
                </tr>
            </tbody>
        </table>
    </form>
</div>