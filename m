Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B39D18930E
	for <lists+linux-riscv@lfdr.de>; Wed, 18 Mar 2020 01:40:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=jSbB96gkV6Tq9N4yd+/6U22oTUdE4djX3cq7LX6uJm8=; b=ggaW1Z2KoiAA6mJvrepwp5UG8w
	tc+rZ9aT68saosvou0i2w+TSG3DZqgYdnIsR3kMjcnl3LVAQxmLW2qMfgougbH6/+h1j/1wnhT8mb
	lvr+fDQNiAannWUyRpZMYmwPWZrVDiMnhMQemk7SY15N9/1q5KdntsohJ74LG+21EB2wZ653hchgZ
	9Jf6Ufg7KLUcMkYkyl+Czgzk2gB+s8bB5gj57er4UogDQSVCDEmSzVTIB326IeiLLiml/fKsurWSZ
	YVbnpRfZVgwqg1KT47FhREENmACuVb4x9OManzsx4cjQAMPYQqhpPzlikbWUUGkuSNrZwgdt3rSH7
	S01ANGJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEMlL-000562-KV; Wed, 18 Mar 2020 00:40:47 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEMlH-00055a-T0
 for linux-riscv@lists.infradead.org; Wed, 18 Mar 2020 00:40:45 +0000
Received: by mail-pl1-x643.google.com with SMTP id m1so2181885pll.6
 for <linux-riscv@lists.infradead.org>; Tue, 17 Mar 2020 17:40:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=jSbB96gkV6Tq9N4yd+/6U22oTUdE4djX3cq7LX6uJm8=;
 b=Q4i8AVJ9A1SoTGlrYcj+L5E847pgBsUOZ6oAfz3D/2mHb3uNG0AJGoLwj+/REWBfaE
 WJKyKvl2cBWGYH6iHg4KaiRCQIAAnKDsK4YS0PEG5EZRYaOXGsGRDbNAs9Nnb5nLRxom
 UPW4qsXPzjZFrRd55LOK9MNwKghLSjMgTxZwMI8XJr+jWQo2lcPUGgJhaGzeR2Rh1Gmq
 iiYP4lkpZdOtJFSXhhjN8hYvhM5jF082ITaKLam0V56MJWBDUrTBChH0pMLDuOFai6vz
 TguUKzJsBq1CLucOJSGxjykf4yE0z8zxgY6IiEGVEPHBjUyIESf9e5aZ2JBn57oFpo2X
 yYWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=jSbB96gkV6Tq9N4yd+/6U22oTUdE4djX3cq7LX6uJm8=;
 b=np44918iDDO7I64XepIMaO9eSPJhPahLflFgQ5y9gYARKdlg/4ZZImyCrT0A+YXPWs
 iV48HoQywhyaPZrxzvcC48Yx678C/ZgvSI3IsSxAUyhPauIGjRcLyp3rd4tDbfur7lhc
 /68WbrEJYovMb9jmhkaqoP7a4i3iMIomw39Ixf/zZ7MC/ojZMC8jAXiU1KyTCrqqXKug
 N8u84QFqQTm1aVhQW0JhQJvd+liZX/wRKNZGnKtMZvc1hBPBiMt3blP8wvQpzO6Zno2Q
 2gKtv0eHMWuEJsVMiMksXHVOUnKClxKjX57M/8CDGkzoOCjiqRdWc/dh50DL/QJWVsRc
 kzeQ==
X-Gm-Message-State: ANhLgQ2GjiXNycdK8hTj4N8OdmGfze3DG2QO7tgPh6+EcwUvJjeXzTom
 l3/Hs/Vf7T+bldqX9bMjw/y+ZA==
X-Google-Smtp-Source: ADFU+vtJN1cKuL2W6AG44CrmWFVctlDq2q9vTUlV18N6VWQ9U5rAT9b0PiF2pMIuFqLoXJuzpE377A==
X-Received: by 2002:a17:90a:1d4:: with SMTP id 20mr1805533pjd.95.1584492042613; 
 Tue, 17 Mar 2020 17:40:42 -0700 (PDT)
Received: from VincentChen-ThinkPad-T480s.internal.sifive.com
 (220-132-236-182.HINET-IP.hinet.net. [220.132.236.182])
 by smtp.gmail.com with ESMTPSA id p4sm4258526pfg.163.2020.03.17.17.40.40
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 17 Mar 2020 17:40:42 -0700 (PDT)
From: Vincent Chen <vincent.chen@sifive.com>
To: gregkh@linuxfoundation.org, jslaby@suse.co, palmer@dabbelt.com,
 paul.walmsley@sifive.com
Subject: [PATCH v2] tty: serial: Add CONSOLE_POLL support to SiFive UART
Date: Wed, 18 Mar 2020 08:40:27 +0800
Message-Id: <1584492027-23236-1-git-send-email-vincent.chen@sifive.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_174043_949809_4E893F45 
X-CRM114-Status: UNSURE (   9.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: Vincent Chen <vincent.chen@sifive.com>, linux-riscv@lists.infradead.org,
 linux-serial@vger.kernel.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Add CONSOLE_POLL support for future KGDB porting.

Signed-off-by: Vincent Chen <vincent.chen@sifive.com>

Changes since v1:
1. Fix the compile error reported by kbuild test robot
---
 drivers/tty/serial/sifive.c | 27 +++++++++++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/drivers/tty/serial/sifive.c b/drivers/tty/serial/sifive.c
index d5f81b98e4d7..f46b5dba0661 100644
--- a/drivers/tty/serial/sifive.c
+++ b/drivers/tty/serial/sifive.c
@@ -709,6 +709,29 @@ static const char *sifive_serial_type(struct uart_port *port)
 	return port->type == PORT_SIFIVE_V0 ? "SiFive UART v0" : NULL;
 }
 
+#ifdef CONFIG_CONSOLE_POLL
+static int sifive_serial_poll_get_char(struct uart_port *port)
+{
+	struct sifive_serial_port *ssp = port_to_sifive_serial_port(port);
+	char is_empty, ch;
+
+	ch = __ssp_receive_char(ssp, &is_empty);
+	if (is_empty)
+		return NO_POLL_CHAR;
+
+	return ch;
+}
+
+static void sifive_serial_poll_put_char(struct uart_port *port,
+					unsigned char c)
+{
+	struct sifive_serial_port *ssp = port_to_sifive_serial_port(port);
+
+	__ssp_wait_for_xmitr(ssp);
+	__ssp_transmit_char(ssp, c);
+}
+#endif /* CONFIG_CONSOLE_POLL */
+
 /*
  * Early console support
  */
@@ -877,6 +900,10 @@ static const struct uart_ops sifive_serial_uops = {
 	.request_port	= sifive_serial_request_port,
 	.config_port	= sifive_serial_config_port,
 	.verify_port	= sifive_serial_verify_port,
+#ifdef CONFIG_CONSOLE_POLL
+	.poll_get_char	= sifive_serial_poll_get_char,
+	.poll_put_char	= sifive_serial_poll_put_char,
+#endif
 };
 
 static struct uart_driver sifive_serial_uart_driver = {
-- 
2.7.4


