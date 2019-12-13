<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="backupAdd.aspx.cs" Inherits="HF_SMS_APP.backupAdd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="PageData" runat="server">
    <br /><br /><br />
    <div class="selfun">
            <h6><b style="color:#fff">SELECT A FUNCTION</b>
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>ADD</asp:ListItem> 
            <asp:ListItem>MODIFY</asp:ListItem>
            
        </asp:DropDownList>
                <asp:Button runat="server" CssClass="active" Text="GO" OnClick="Unnamed1_Click" />
            </h6>
        </div>

    <div class="mains">
        <div class="row">
            <div class="col-md-6">
                <h5>STUDENT BIO DATA</h5>
                <table id="ourfrm">
                    <tr>
                        <td>FirstName</td>
                        <td> 
                            <asp:TextBox runat="server" ID="txtfname"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>LastName</td>
                        <td>
                            <asp:TextBox runat="server" ID="txtlastname"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>BirthDate</td>
                        <td> 
                            <telerik:RadDatePicker ID="RadDatePicker1" runat="server">

                            </telerik:RadDatePicker>
                        </td>
                    </tr>
                    <tr>
                        <td>Gender</td>
                        <td>
                            <asp:RadioButtonList runat="server" ID="sextxt" RepeatLayout="Table" RepeatDirection="Horizontal" Height="19px" Width="330px">
                                <asp:ListItem Value="Male">Male</asp:ListItem>
                                <asp:ListItem Value="FeMale">FeMale</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                    <tr>
                        <td>Tribe</td>
                        <td>
                            <asp:TextBox runat="server" ID="txttribe"></asp:TextBox>
                        </td>
                    </tr>

                    <tr>
                        <td>Parent</td>
                        <td>
                            <asp:TextBox runat="server" ID="txtparent"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>ContactEmail</td>
                        <td>
                            <asp:TextBox runat="server" ID="txtcontactemail"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>ContactPhone</td>
                        <td>
                            <asp:TextBox runat="server" ID="txtcontactphone"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Address</td>
                        <td>
                            <asp:TextBox runat="server" ID="txtaddress" TextMode="MultiLine"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Nationality</td>
                        <td>
                            <asp:DropDownList runat="server" ID="txtcountry">
                                
                                <asp:ListItem value="SELECT">--SELECT COUNTRY--</asp:ListItem>
                                <asp:ListItem value="United States">United States</asp:ListItem>
                                <asp:ListItem value="United Kingdom">United Kingdom</asp:ListItem>
                                <asp:ListItem value="Afghanistan">Afghanistan</asp:ListItem>
                                <asp:ListItem value="Albania">Albania</asp:ListItem>
                                <asp:ListItem value="Algeria">Algeria</asp:ListItem>
                                <asp:ListItem value="American Samoa">American Samoa</asp:ListItem>
                                <asp:ListItem value="Andorra">Andorra</asp:ListItem>
                                <asp:ListItem value="Angola">Angola</asp:ListItem>
                                <asp:ListItem value="Anguilla">Anguilla</asp:ListItem>
                                <asp:ListItem value="Antarctica">Antarctica</asp:ListItem>
                                <asp:ListItem value="Antigua and Barbuda">Antigua and Barbuda</asp:ListItem>
                                <asp:ListItem value="Argentina">Argentina</asp:ListItem>
                                <asp:ListItem value="Armenia">Armenia</asp:ListItem>
                                <asp:ListItem value="Aruba">Aruba</asp:ListItem>
                                <asp:ListItem value="Australia">Australia</asp:ListItem>
                                <asp:ListItem value="Austria">Austria</asp:ListItem>
                                <asp:ListItem value="Azerbaijan">Azerbaijan</asp:ListItem>
                                <asp:ListItem value="Bahamas">Bahamas</asp:ListItem>
                                <asp:ListItem value="Bahrain">Bahrain</asp:ListItem>
                                <asp:ListItem value="Bangladesh">Bangladesh</asp:ListItem>
                                <asp:ListItem value="Barbados">Barbados</asp:ListItem>
                                <asp:ListItem value="Belarus">Belarus</asp:ListItem>
                                <asp:ListItem value="Belgium">Belgium</asp:ListItem>
                                <asp:ListItem value="Belize">Belize</asp:ListItem>
                                <asp:ListItem value="Benin">Benin</asp:ListItem>
                                <asp:ListItem value="Bermuda">Bermuda</asp:ListItem>
                                <asp:ListItem value="Bhutan">Bhutan</asp:ListItem>
                                <asp:ListItem value="Bolivia">Bolivia</asp:ListItem>
                                <asp:ListItem value="Bosnia and Herzegovina">Bosnia and Herzegovina</asp:ListItem>
                                <asp:ListItem value="Botswana">Botswana</asp:ListItem>
                                <asp:ListItem value="Bouvet Island">Bouvet Island</asp:ListItem>
                                <asp:ListItem value="Brazil">Brazil</asp:ListItem>
                                <asp:ListItem value="British Indian Ocean Territory">British Indian Ocean Territory</asp:ListItem>
                                <asp:ListItem value="Brunei Darussalam">Brunei Darussalam</asp:ListItem>
                                <asp:ListItem value="Bulgaria">Bulgaria</asp:ListItem>
                                <asp:ListItem value="Burkina Faso">Burkina Faso</asp:ListItem>
                                <asp:ListItem value="Burundi">Burundi</asp:ListItem>
                                <asp:ListItem value="Cambodia">Cambodia</asp:ListItem>
                                <asp:ListItem value="Cameroon">Cameroon</asp:ListItem>
                                <asp:ListItem value="Canada">Canada</asp:ListItem>
                                <asp:ListItem value="Cape Verde">Cape Verde</asp:ListItem>
                                <asp:ListItem value="Cayman Islands">Cayman Islands</asp:ListItem>
                                <asp:ListItem value="Central African Republic">Central African Republic</asp:ListItem>
                                <asp:ListItem value="Chad">Chad</asp:ListItem>
                                <asp:ListItem value="Chile">Chile</asp:ListItem>
                                <asp:ListItem value="China">China</asp:ListItem>
                                <asp:ListItem value="Christmas Island">Christmas Island</asp:ListItem>
                                <asp:ListItem value="Cocos (Keeling) Islands">Cocos (Keeling) Islands</asp:ListItem>
                                <asp:ListItem value="Colombia">Colombia</asp:ListItem>
                                <asp:ListItem value="Comoros">Comoros</asp:ListItem>
                                <asp:ListItem value="Congo">Congo</asp:ListItem>
                                <asp:ListItem value="Congo, The Democratic Republic of The">Congo, The Democratic Republic of The</asp:ListItem>
                                <asp:ListItem value="Cook Islands">Cook Islands</asp:ListItem>
                                <asp:ListItem value="Costa Rica">Costa Rica</asp:ListItem>
                                <asp:ListItem value="Cote D'ivoire">Cote D'ivoire</asp:ListItem>
                                <asp:ListItem value="Croatia">Croatia</asp:ListItem>
                                <asp:ListItem value="Cuba">Cuba</asp:ListItem>
                                <asp:ListItem value="Cyprus">Cyprus</asp:ListItem>
                                <asp:ListItem value="Czech Republic">Czech Republic</asp:ListItem>
                                <asp:ListItem value="Denmark">Denmark</asp:ListItem>
                                <asp:ListItem value="Djibouti">Djibouti</asp:ListItem>
                                <asp:ListItem value="Dominica">Dominica</asp:ListItem>
                                <asp:ListItem value="Dominican Republic">Dominican Republic</asp:ListItem>
                                <asp:ListItem value="Ecuador">Ecuador</asp:ListItem>
                                <asp:ListItem value="Egypt">Egypt</asp:ListItem>
                                <asp:ListItem value="El Salvador">El Salvador</asp:ListItem>
                                <asp:ListItem value="Equatorial Guinea">Equatorial Guinea</asp:ListItem>
                                <asp:ListItem value="Eritrea">Eritrea</asp:ListItem>
                                <asp:ListItem value="Estonia">Estonia</asp:ListItem>
                                <asp:ListItem value="Ethiopia">Ethiopia</asp:ListItem>
                                <asp:ListItem value="Falkland Islands (Malvinas)">Falkland Islands (Malvinas)</asp:ListItem>
                                <asp:ListItem value="Faroe Islands">Faroe Islands</asp:ListItem>
                                <asp:ListItem value="Fiji">Fiji</asp:ListItem>
                                <asp:ListItem value="Finland">Finland</asp:ListItem>
                                <asp:ListItem value="France">France</asp:ListItem>
                                <asp:ListItem value="French Guiana">French Guiana</asp:ListItem>
                                <asp:ListItem value="French Polynesia">French Polynesia</asp:ListItem>
                                <asp:ListItem value="French Southern Territories">French Southern Territories</asp:ListItem>
                                <asp:ListItem value="Gabon">Gabon</asp:ListItem>
                                <asp:ListItem value="Gambia">Gambia</asp:ListItem>
                                <asp:ListItem value="Georgia">Georgia</asp:ListItem>
                                <asp:ListItem value="Germany">Germany</asp:ListItem>
                                <asp:ListItem value="Ghana">Ghana</asp:ListItem>
                                <asp:ListItem value="Gibraltar">Gibraltar</asp:ListItem>
                                <asp:ListItem value="Greece">Greece</asp:ListItem>
                                <asp:ListItem value="Greenland">Greenland</asp:ListItem>
                                <asp:ListItem value="Grenada">Grenada</asp:ListItem>
                                <asp:ListItem value="Guadeloupe">Guadeloupe</asp:ListItem>
                                <asp:ListItem value="Guam">Guam</asp:ListItem>
                                <asp:ListItem value="Guatemala">Guatemala</asp:ListItem>
                                <asp:ListItem value="Guinea">Guinea</asp:ListItem>
                                <asp:ListItem value="Guinea-bissau">Guinea-bissau</asp:ListItem>
                                <asp:ListItem value="Guyana">Guyana</asp:ListItem>
                                <asp:ListItem value="Haiti">Haiti</asp:ListItem>
                                <asp:ListItem value="Heard Island and Mcdonald Islands">Heard Island and Mcdonald Islands</asp:ListItem>
                                <asp:ListItem value="Holy See (Vatican City State)">Holy See (Vatican City State)</asp:ListItem>
                                <asp:ListItem value="Honduras">Honduras</asp:ListItem>
                                <asp:ListItem value="Hong Kong">Hong Kong</asp:ListItem>
                                <asp:ListItem value="Hungary">Hungary</asp:ListItem>
                                <asp:ListItem value="Iceland">Iceland</asp:ListItem>
                                <asp:ListItem value="India">India</asp:ListItem>
                                <asp:ListItem value="Indonesia">Indonesia</asp:ListItem>
                                <asp:ListItem value="Iran, Islamic Republic of">Iran, Islamic Republic of</asp:ListItem>
                                <asp:ListItem value="Iraq">Iraq</asp:ListItem>
                                <asp:ListItem value="Ireland">Ireland</asp:ListItem>
                                <asp:ListItem value="Israel">Israel</asp:ListItem>
                                <asp:ListItem value="Italy">Italy</asp:ListItem>
                                <asp:ListItem value="Jamaica">Jamaica</asp:ListItem>
                                <asp:ListItem value="Japan">Japan</asp:ListItem>
                                <asp:ListItem value="Jordan">Jordan</asp:ListItem>
                                <asp:ListItem value="Kazakhstan">Kazakhstan</asp:ListItem>
                                <asp:ListItem value="Kenya">Kenya</asp:ListItem>
                                <asp:ListItem value="Kiribati">Kiribati</asp:ListItem>
                                <asp:ListItem value="Korea, Democratic People's Republic of">Korea, Democratic People's Republic of</asp:ListItem>
                                <asp:ListItem value="Korea, Republic of">Korea, Republic of</asp:ListItem>
                                <asp:ListItem value="Kuwait">Kuwait</asp:ListItem>
                                <asp:ListItem value="Kyrgyzstan">Kyrgyzstan</asp:ListItem>
                                <asp:ListItem value="Lao People's Democratic Republic">Lao People's Democratic Republic</asp:ListItem>
                                <asp:ListItem value="Latvia">Latvia</asp:ListItem>
                                <asp:ListItem value="Lebanon">Lebanon</asp:ListItem>
                                <asp:ListItem value="Lesotho">Lesotho</asp:ListItem>
                                <asp:ListItem value="Liberia">Liberia</asp:ListItem>
                                <asp:ListItem value="Libyan Arab Jamahiriya">Libyan Arab Jamahiriya</asp:ListItem>
                                <asp:ListItem value="Liechtenstein">Liechtenstein</asp:ListItem>
                                <asp:ListItem value="Lithuania">Lithuania</asp:ListItem>
                                <asp:ListItem value="Luxembourg">Luxembourg</asp:ListItem>
                                <asp:ListItem value="Macao">Macao</asp:ListItem>
                                <asp:ListItem value="Macedonia, The Former Yugoslav Republic of">Macedonia, The Former Yugoslav Republic of</asp:ListItem>
                                <asp:ListItem value="Madagascar">Madagascar</asp:ListItem>
                                <asp:ListItem value="Malawi">Malawi</asp:ListItem>
                                <asp:ListItem value="Malaysia">Malaysia</asp:ListItem>
                                <asp:ListItem value="Maldives">Maldives</asp:ListItem>
                                <asp:ListItem value="Mali">Mali</asp:ListItem>
                                <asp:ListItem value="Malta">Malta</asp:ListItem>
                                <asp:ListItem value="Marshall Islands">Marshall Islands</asp:ListItem>
                                <asp:ListItem value="Martinique">Martinique</asp:ListItem>
                                <asp:ListItem value="Mauritania">Mauritania</asp:ListItem>
                                <asp:ListItem value="Mauritius">Mauritius</asp:ListItem>
                                <asp:ListItem value="Mayotte">Mayotte</asp:ListItem>
                                <asp:ListItem value="Mexico">Mexico</asp:ListItem>
                                <asp:ListItem value="Micronesia, Federated States of">Micronesia, Federated States of</asp:ListItem>
                                <asp:ListItem value="Moldova, Republic of">Moldova, Republic of</asp:ListItem>
                                <asp:ListItem value="Monaco">Monaco</asp:ListItem>
                                <asp:ListItem value="Mongolia">Mongolia</asp:ListItem>
                                <asp:ListItem value="Montserrat">Montserrat</asp:ListItem>
                                <asp:ListItem value="Morocco">Morocco</asp:ListItem>
                                <asp:ListItem value="Mozambique">Mozambique</asp:ListItem>
                                <asp:ListItem value="Myanmar">Myanmar</asp:ListItem>
                                <asp:ListItem value="Namibia">Namibia</asp:ListItem>
                                <asp:ListItem value="Nauru">Nauru</asp:ListItem>
                                <asp:ListItem value="Nepal">Nepal</asp:ListItem>
                                <asp:ListItem value="Netherlands">Netherlands</asp:ListItem>
                                <asp:ListItem value="Netherlands Antilles">Netherlands Antilles</asp:ListItem>
                                <asp:ListItem value="New Caledonia">New Caledonia</asp:ListItem>
                                <asp:ListItem value="New Zealand">New Zealand</asp:ListItem>
                                <asp:ListItem value="Nicaragua">Nicaragua</asp:ListItem>
                                <asp:ListItem value="Niger">Niger</asp:ListItem>
                                <asp:ListItem value="Nigeria">Nigeria</asp:ListItem>
                                <asp:ListItem value="Niue">Niue</asp:ListItem>
                                <asp:ListItem value="Norfolk Island">Norfolk Island</asp:ListItem>
                                <asp:ListItem value="Northern Mariana Islands">Northern Mariana Islands</asp:ListItem>
                                <asp:ListItem value="Norway">Norway</asp:ListItem>
                                <asp:ListItem value="Oman">Oman</asp:ListItem>
                                <asp:ListItem value="Pakistan">Pakistan</asp:ListItem>
                                <asp:ListItem value="Palau">Palau</asp:ListItem>
                                <asp:ListItem value="Palestinian Territory, Occupied">Palestinian Territory, Occupied</asp:ListItem>
                                <asp:ListItem value="Panama">Panama</asp:ListItem>
                                <asp:ListItem value="Papua New Guinea">Papua New Guinea</asp:ListItem>
                                <asp:ListItem value="Paraguay">Paraguay</asp:ListItem>
                                <asp:ListItem value="Peru">Peru</asp:ListItem>
                                <asp:ListItem value="Philippines">Philippines</asp:ListItem>
                                <asp:ListItem value="Pitcairn">Pitcairn</asp:ListItem>
                                <asp:ListItem value="Poland">Poland</asp:ListItem>
                                <asp:ListItem value="Portugal">Portugal</asp:ListItem>
                                <asp:ListItem value="Puerto Rico">Puerto Rico</asp:ListItem>
                                <asp:ListItem value="Qatar">Qatar</asp:ListItem>
                                <asp:ListItem value="Reunion">Reunion</asp:ListItem>
                                <asp:ListItem value="Romania">Romania</asp:ListItem>
                                <asp:ListItem value="Russian Federation">Russian Federation</asp:ListItem>
                                <asp:ListItem value="Rwanda">Rwanda</asp:ListItem>
                                <asp:ListItem value="Saint Helena">Saint Helena</asp:ListItem>
                                <asp:ListItem value="Saint Kitts and Nevis">Saint Kitts and Nevis</asp:ListItem>
                                <asp:ListItem value="Saint Lucia">Saint Lucia</asp:ListItem>
                                <asp:ListItem value="Saint Pierre and Miquelon">Saint Pierre and Miquelon</asp:ListItem>
                                <asp:ListItem value="Saint Vincent and The Grenadines">Saint Vincent and The Grenadines</asp:ListItem>
                                <asp:ListItem value="Samoa">Samoa</asp:ListItem>
                                <asp:ListItem value="San Marino">San Marino</asp:ListItem>
                                <asp:ListItem value="Sao Tome and Principe">Sao Tome and Principe</asp:ListItem>
                                <asp:ListItem value="Saudi Arabia">Saudi Arabia</asp:ListItem>
                                <asp:ListItem value="Senegal">Senegal</asp:ListItem>
                                <asp:ListItem value="Serbia and Montenegro">Serbia and Montenegro</asp:ListItem>
                                <asp:ListItem value="Seychelles">Seychelles</asp:ListItem>
                                <asp:ListItem value="Sierra Leone">Sierra Leone</asp:ListItem>
                                <asp:ListItem value="Singapore">Singapore</asp:ListItem>
                                <asp:ListItem value="Slovakia">Slovakia</asp:ListItem>
                                <asp:ListItem value="Slovenia">Slovenia</asp:ListItem>
                                <asp:ListItem value="Solomon Islands">Solomon Islands</asp:ListItem>
                                <asp:ListItem value="Somalia">Somalia</asp:ListItem>
                                <asp:ListItem value="South Africa">South Africa</asp:ListItem>
                                <asp:ListItem value="South Georgia and The South Sandwich Islands">South Georgia and The South Sandwich Islands</asp:ListItem>
                                <asp:ListItem value="Spain">Spain</asp:ListItem>
                                <asp:ListItem value="Sri Lanka">Sri Lanka</asp:ListItem>
                                <asp:ListItem value="Sudan">Sudan</asp:ListItem>
                                <asp:ListItem value="Suriname">Suriname</asp:ListItem>
                                <asp:ListItem value="Svalbard and Jan Mayen">Svalbard and Jan Mayen</asp:ListItem>
                                <asp:ListItem value="Swaziland">Swaziland</asp:ListItem>
                                <asp:ListItem value="Sweden">Sweden</asp:ListItem>
                                <asp:ListItem value="Switzerland">Switzerland</asp:ListItem>
                                <asp:ListItem value="Syrian Arab Republic">Syrian Arab Republic</asp:ListItem>
                                <asp:ListItem value="Taiwan, Province of China">Taiwan, Province of China</asp:ListItem>
                                <asp:ListItem value="Tajikistan">Tajikistan</asp:ListItem>
                                <asp:ListItem value="Tanzania, United Republic of">Tanzania, United Republic of</asp:ListItem>
                                <asp:ListItem value="Thailand">Thailand</asp:ListItem>
                                <asp:ListItem value="Timor-leste">Timor-leste</asp:ListItem>
                                <asp:ListItem value="Togo">Togo</asp:ListItem>
                                <asp:ListItem value="Tokelau">Tokelau</asp:ListItem>
                                <asp:ListItem value="Tonga">Tonga</asp:ListItem>
                                <asp:ListItem value="Trinidad and Tobago">Trinidad and Tobago</asp:ListItem>
                                <asp:ListItem value="Tunisia">Tunisia</asp:ListItem>
                                <asp:ListItem value="Turkey">Turkey</asp:ListItem>
                                <asp:ListItem value="Turkmenistan">Turkmenistan</asp:ListItem>
                                <asp:ListItem value="Turks and Caicos Islands">Turks and Caicos Islands</asp:ListItem>
                                <asp:ListItem value="Tuvalu">Tuvalu</asp:ListItem>
                                <asp:ListItem value="Uganda">Uganda</asp:ListItem>
                                <asp:ListItem value="Ukraine">Ukraine</asp:ListItem>
                                <asp:ListItem value="United Arab Emirates">United Arab Emirates</asp:ListItem>
                                <asp:ListItem value="United Kingdom">United Kingdom</asp:ListItem>
                                <asp:ListItem value="United States">United States</asp:ListItem>
                                <asp:ListItem value="United States Minor Outlying Islands">United States Minor Outlying Islands</asp:ListItem>
                                <asp:ListItem value="Uruguay">Uruguay</asp:ListItem>
                                <asp:ListItem value="Uzbekistan">Uzbekistan</asp:ListItem>
                                <asp:ListItem value="Vanuatu">Vanuatu</asp:ListItem>
                                <asp:ListItem value="Venezuela">Venezuela</asp:ListItem>
                                <asp:ListItem value="Viet Nam">Viet Nam</asp:ListItem>
                                <asp:ListItem value="Virgin Islands, British">Virgin Islands, British</asp:ListItem>
                                <asp:ListItem value="Virgin Islands, U.S.">Virgin Islands, U.S.</asp:ListItem>
                                <asp:ListItem value="Wallis and Futuna">Wallis and Futuna</asp:ListItem>
                                <asp:ListItem value="Western Sahara">Western Sahara</asp:ListItem>
                                <asp:ListItem value="Yemen">Yemen</asp:ListItem>
                                <asp:ListItem value="Zambia">Zambia</asp:ListItem>
                                <asp:ListItem value="Zimbabwe">Zimbabwe</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>Ethnicity</td>
                        <td>
                            <asp:TextBox runat="server" ID="txtethnicity"></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="col-md-6">
                <h5>STUDENT CLASS DATA</h5>
                <table>
                    <tr>
                        <td>StudentID</td>
                        <td>
                            <asp:TextBox runat="server" ID="txtstudentid"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Class</td>
                        <td>

                            <asp:DropDownList runat="server" ID="txtclass">
                                <asp:ListItem value="SELECT">--SELECT CLASS--</asp:ListItem>
                                <asp:ListItem Value="FORM1">FORM 1</asp:ListItem>
                                <asp:ListItem Value="FORM2">FORM 2</asp:ListItem>
                                <asp:ListItem Value="FORM3">FORM 3</asp:ListItem>
                                <asp:ListItem Value="FORM4">FORM 4</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>ClassSuffix</td>
                        <td>

                            <asp:DropDownList runat="server" ID="txtclsssufx">
                                <asp:ListItem value="SELECT">--SELECT SUFFIX--</asp:ListItem>
                                <asp:ListItem Value="A">A</asp:ListItem>
                                <asp:ListItem Value="B">B</asp:ListItem>
                                <asp:ListItem Value="C">C</asp:ListItem>
                                <asp:ListItem Value="D">D</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>ClassTeacher</td>
                        <td>
                            <asp:TextBox runat="server" ID="txtclsteacher"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>DateEnrolled</td>
                        <td>
                            <telerik:RadDatePicker ID="RadDatePicker2" runat="server"></telerik:RadDatePicker>
                        </td>
                    </tr>
                    <tr>
                        <td>GraduationYear</td>
                        <td>
                            <telerik:RadDatePicker ID="RadDatePicker3" runat="server"></telerik:RadDatePicker>
                        </td>
                    </tr>
                    <tr>
                        <td>Scholarship Awarded</td>
                        <td>

                            <asp:DropDownList runat="server" ID="txtscholrship">
                                <asp:ListItem value="SELECT">--NEED SCHOLARSHIP--</asp:ListItem>
                                <asp:ListItem Value="YES">YES</asp:ListItem>
                                <asp:ListItem Value="NO">NO</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>Tuition </td>
                        <td>
                            <asp:TextBox runat="server" ID="txttuition"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>ClubMembership</td>
                        <td>
                            <asp:TextBox runat="server" ID="txtclub"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Religion</td>
                        <td>
                            <asp:TextBox runat="server" ID="txtreligion"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Marital Status</td>
                        <td>
                            <asp:TextBox runat="server" ID="txtmarried"></asp:TextBox>
                        </td>
                    </tr>

                </table>
            </div>
        </div>

        <asp:Label runat="server" ID="lblstatus"> </asp:Label>
        <table>
            <tr>
                <td>
                    <asp:Button Text="SAVE" runat="server" CssClass="btn btn-success" ID="btnSave" OnClick="btnSave_Click" />
                    <asp:Button Text="RESET" runat="server" CssClass="btn btn-warning" ID="btnReset" value="reset" OnClick="btnReset_Click" />

                </td>
            </tr>
        </table>
    </div>
</asp:Content>
