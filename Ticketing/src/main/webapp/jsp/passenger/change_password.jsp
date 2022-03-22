<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <!-- Modal -->
    <div class="modal fade" id="changePasswordModal" tabindex="-1" aria-labelledby="changePasswordModalLabel"
        aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header text-white"
                    style="background-image: linear-gradient(10deg, #637ce6 0%, #1c285c 100%);">
                    <h5 class="modal-title" id="changePasswordModalLabel">Change Password</h5>
                    <button type="button" class="close text-white" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <form action="">
                    <div class="modal-body">
                        <div class="form-group">
                            <label for="old_password">Old Password</label>
                            <input type="password" class="form-control" id="old_password" name="old_password" required
                                minlength="8" maxlength="20">
                        </div>
                        <div class="form-group">
                            <label for="password">New Password</label>
                            <input type="password" class="form-control" id="password" name="new_password" required
                                minlength="8" maxlength="20">
                        </div>
                    </div>
                    <div class="modal-footer d-flex justify-content-between">
                        <button type="submit" class="btn btn-primary">Change
                            Password</button>
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    </div>
                </form>
            </div>
        </div>
    </div>