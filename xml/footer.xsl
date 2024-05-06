<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes"/>

    <xsl:template match="/">
        <html>
            <head>
              
                <style>
                  *{
                    margin: 0;
                    padding: 0;
                    box-sizing: border-box;
                  }
                  html{
                    overflow: hidden;

                  body{
                    font-family: "Montserrat", sans-serif;
                    font-style: normal;
                    color: white;
                    owerflow: hidden;

                  }
                  p {
                    owerflow: hidden;

                        text-align: left;
                        font-size: 16px;
                        line-height: 31px;
                  }
                </style>
            </head>
            <body>
                <p>Курсовую работу на тему "<xsl:value-of select="authorInfo/topic"/>" выполнил студент <xsl:value-of select="authorInfo/course"/> курса <xsl:value-of select="authorInfo/group"/> группы факультета <xsl:value-of select="authorInfo/faculty"/> специальности <xsl:value-of select="authorInfo/spec"/><xsl:value-of select="authorInfo/surname"/><xsl:value-of select="authorInfo/name"/></p>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="p">
      <p style="font-family: 'Montserrat', sans-serif;">
        <xsl:apply-templates/>
      </p>
</xsl:template>


</xsl:stylesheet>
