<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:pd4ml="http://pd4ml.com">
    <xsl:output method="html"/>
    <xsl:preserve-space elements="*"/>
    <xsl:template match="/">
        <xsl:for-each select="//Check">
            <div style="box-sizing:content-box;padding-top:10px;padding-left:10px;padding-right:10px;padding-bottom:8px;width:771px;height:310px;margin-left:15px;margin-right:15px;">
                <!--Header-->
                <div style="width:771px;height: 110px;">
                    <table cellpadding="0" cellspacing="0" border="0" style="height:90px;font-size:13px;" width="771px;">
                        <tr>
                            <td style="width: 300px;">
                                <table cellpadding="0" cellspacing="0" style="width: 300px;">
                                    <tr>
                                        <td style="width:65px;">&#160;</td>
                                        <td style="width:175px;vertical-align:bottom">
                                            <xsl:if test="/List/@printCompanyInfo ='true'">
                                                <span style="font-size:10pt;font-weight:bold;">
                                                    <xsl:value-of select="//@companyName"/>
                                                </span>
                                            </xsl:if>
                                            <br/>
                                            <xsl:if test="/List/@printCompanyInfo ='true'">
                                                <span style="font-size:8pt;">
                                                    <xsl:value-of select="//@companyAddress"/>
                                                </span>
                                            </xsl:if>
                                            <br/>
                                            <xsl:if test="/List/@printCompanyInfo ='true'">
                                                <span style="font-size:8pt;">
                                                    <xsl:value-of select="//@companyCity"/>,&#160;<xsl:value-of
                                                        select="//@companyState"/><xsl:value-of select="//@companyZip"/>&#160;
                                                </span>
                                            </xsl:if>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td style="width: 250px;text-align:center;white-space:nowrap" valign="middle">
                                <xsl:if test="/List/@printBankInfo ='true'">
                                    <span style="font-size:8pt;font-weight:bold;">
                                        <xsl:value-of select="@bankName"/>
                                    </span>
                                </xsl:if>
                                &#160;
                                <br/>
                                <xsl:if test="/List/@printBankInfo ='true'">
                                    <xsl:value-of select="@bankAddress"/>
                                    <xsl:if test="@bankAddress2 != ''">,&#160;<xsl:value-of select="@bankAddress2"/>
                                    </xsl:if>
                                </xsl:if>
                                &#160;
                                <br/>
                                <xsl:if test="/List/@printBankInfo ='true'">
                                    <span style="font-size:8pt">
                                        <xsl:value-of select="@bankCity"/>,&#160;<xsl:value-of
                                            select="@bankState"/><xsl:value-of select="@bankZip"/>&#160;
                                    </span>
                                </xsl:if>
                                &#160;
                                <br/>
                            </td>
                            <td style="width:150px;text-align:right;" valign="top">
                                <table style="width: 150px;">
                                    <tr>
                                        <td style="height:35px;text-align:right;font-weight:bold;font-size:13pt;" nowrap="nowrap" valign="bottom">
                                            <xsl:if test="/List/@printCheckNumber='true'">
                                                <xsl:value-of select="@checkNumber"/>
                                            </xsl:if>&#160;
                                            <br/>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="height:45px;text-align:right;font-size:12pt" nowrap="nowrap" valign="bottom">
                                            <xsl:value-of select="@date"/>&#160;
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>&#160;
                    <br/>
                </div>

                <!--Amount-->
                <div style="width:771px;height: 60px;" >
                    <table cellpadding="0" cellspacing="0" style="width:660px;margin-left:100px;height: 35px;">
                        <tr>
                            <td style="width:500px;text-align:left;vertical-align:middle;">
                                <xsl:value-of select="@paidToName" />
                            </td>
                            <th style="width:35px;">&#160;</th>
                            <td style="width:125px">
                                <table style="width: 125px;height: 35px;" class="linesAmount">
                                    <tr>
                                        <td width="99%">&#160;</td>
                                        <th style="font-size:12pt;text-align:right;vertical-align:middle;" nowrap="true">
                                            <xsl:value-of select="format-number(@amountAbsAsString, '#,##0.00')"/>
                                        </th>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                    <table style="width:700px;height: 25px;" class="linesAmount">
                        <tr>
                            <th style="font-weight:normal;font-size:12pt;text-align:left;padding-left:25px;vertical-align:bottom;" nowrap="true">
                                <xsl:value-of select="@amountInWords"/>
                            </th>
                            <td width="99%">&#160;</td>
                        </tr>
                    </table>
                </div>

                <!--Memo and Signature-->
                <div style="width: 771px;height: 110px;">
                    <table style="width:771px;height: 110px;" cellpadding="0" cellspacing="0">
                        <tr>
                            <td style="width:390px;font-size:10pt;">
                                <div style="width:340px;margin-left:50px;height:70px;">
                                    <xsl:choose>
                                        <xsl:when test="string-length(@paidToName) > 50">
                                            <span width="35%" style="font-size:9pt; line-height:9pt">
                                                <xsl:value-of select="@paidToName"/>&#160;
                                                <br/>
                                            </span>
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <xsl:value-of select="@paidToName"/>&#160;
                                            <br/>
                                        </xsl:otherwise>
                                    </xsl:choose>
                                    <xsl:value-of select="@paidToAddress"/>
                                    <xsl:if test="@paidToAddress2 != ''">&#160;
                                        <br/>
                                        <xsl:value-of select="@paidToAddress2"/>
                                    </xsl:if>
                                    &#160;
                                    <br/>
                                    <xsl:value-of select="@paidToCity"/>
                                    <xsl:if test="@paidToCity != '' and (@paidToState != '' or @paidToZip != '')">,</xsl:if>
                                    <xsl:value-of select="@paidToState"/>&#160;<xsl:value-of select="@paidToZip"/>
                                </div>
                                <div style="width:340px;margin-left:50px;height:12px;">
                                    <xsl:if test="@location != ''">
                                        <xsl:choose>
                                            <xsl:when test="string-length(@location) > 36">
                                                <span style="font-size:10pt; white-space:nowrap">
                                                    <xsl:value-of select="substring(@location,1,15)"/>...<xsl:value-of
                                                        select="substring(@location,string-length(@location)-15,string-length(@location))"/>
                                                    &#160;
                                                </span>
                                            </xsl:when>
                                            <xsl:otherwise>
                                                <span style="font-size:10pt; white-space:nowrap"
                                                    align="center"><xsl:value-of select="@location"/>&#160;
                                                </span>
                                            </xsl:otherwise>
                                        </xsl:choose>
                                    </xsl:if>
                                    &#160;
                                </div>
                                <div style="width:340px;margin-left:50px;height:28px;">
                                    <xsl:value-of select="substring(@memo,1,36)"/>&#160;
                                </div>
                            </td>
                            <td style="width:80px">&#160;</td>
                            <td style="width:300px">&#160;</td>
                        </tr>
                    </table>
                </div>

                <!--Footer-->
                <div style="width: 771px;height: 30px;text-align:center;">
                    <table style="width:660px; height: 30px;">
                        <tr>
                            <td style="font-size:12pt;text-align: center;">
                                <xsl:if test="/List/@printMicrLine ='true'">
                                    <font face="GnuMICR">C<xsl:value-of select="@checkNumbercomplete"/>C A<xsl:value-of
                                            select="@routingNumber"/>A<xsl:value-of select="@accountNumber"/>C
                                    </font>
                                </xsl:if>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
            <xsl:if test="position() != last() and position() mod 3 = 0 ">
                <pd4ml:page.break/>
            </xsl:if>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>
