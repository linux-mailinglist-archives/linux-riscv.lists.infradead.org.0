Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FF43177164
	for <lists+linux-riscv@lfdr.de>; Tue,  3 Mar 2020 09:41:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=GBGaVFv72Sp1W1LNbEFYJKmbIaNqJLypah697nIc7FI=; b=G2BX7p4wyM1mpKDbKtjPILzaMd
	3DJornRCL0I/hFQmiIGT0P6/dsK1wqhB9+AXsV1SOChCVJ7GaFSVKATmwo3vC2lZTHNG3kI3kklSl
	cqbRa9hYf0SWUbDX/wni2adKjgTGAr6YoxBDXQW4qr2OozCF3PHW6tHcyrsrg0avQIEveZoYcWHai
	TqcxLEfT6ZGAiK4NOCC1bN6ALK+EhlTkF4EyGrnkgxNEOIBjI0Ccv7+yyH+YdENrBzEFFs9lh5CyW
	AbC2DX+lj3nE6/G1bH62d05GSNegHu1iRnv7VIJ/G3JctbXpTqbrV+wX+NGz4gGdRAhXAH99R3sv1
	dLpLrdww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j937e-0006cN-Kj; Tue, 03 Mar 2020 08:41:50 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j937b-0006bn-JX
 for linux-riscv@lists.infradead.org; Tue, 03 Mar 2020 08:41:49 +0000
Received: by mail-pf1-x443.google.com with SMTP id 2so1097405pfg.12
 for <linux-riscv@lists.infradead.org>; Tue, 03 Mar 2020 00:41:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=GBGaVFv72Sp1W1LNbEFYJKmbIaNqJLypah697nIc7FI=;
 b=PlfocTB65f3kMVxlBezmGu8298dq5HxScUCdgPyq+IyEf2GFvCrGtSc668gDuWCAk9
 0bYZDX5nOAk30B4WC4sbhXxtywRrywa6i4W94tmeMFsSAIbu5m1ChrpND9hOVUXH3XJU
 lQK7g5sFq+tmyzcj9WuQVJ50sCdvyYig6sbwcMDFnotbTAIDOM4oEWQmUc46Q03TkdQb
 2HACWks+E49TSt8gy47yfjPRklSHPK0DczVcW+UMDK9TVVogJhKJVlC/5PyaHC5nFHq0
 9L/b/Now6GTXZZ99Mf/KNaT9dXyIfOgRPJSoztfwGClYCYK+/5venpbqFpJuq412QoiU
 inDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=GBGaVFv72Sp1W1LNbEFYJKmbIaNqJLypah697nIc7FI=;
 b=MomMahy/Z57OFv+pQiG+0/vVBjOv+hhS1xjrmp/lEzBwg8yYx9XhRFHXoirfwwfPM9
 xEUSU7RIVcCuHrAoiT+C+bjZ4zCRXFNQLDkKfy2Jp2ROKtI4rgwPV5/mwt3/GLdWePRB
 qW2ba1+reF75rcSUgWlAnnKWtQzaKthKjpHCF6nWy46C9YvKT781EMalQgztgl4WMU55
 6nMRGLBWjRxZFAIBVfat371eOEYBIgPeEeRd5p234p/CQEZfipdOWfVUjKrvW2FiV8Xo
 ZXFIpEqi26JP90tVgTnQwOv/RV9hcEo57Wj3jAb/1rTUPp+IlSMO55rM9lgNNsravpBc
 UfyA==
X-Gm-Message-State: ANhLgQ3naPvRnDTyZR1LjObz2uRhSMPMKTq4VcaS2eRQFIiQ1B10bPFM
 eo534amDTIeXRpOscam+hVbhAw==
X-Google-Smtp-Source: ADFU+vvUwLa29j5IXu4Q/p6wzklfB56+HzOeMxhhhDDeN2It6QgE+fpfQSE5q3+WrOBvskoD/znU0Q==
X-Received: by 2002:a63:155c:: with SMTP id 28mr3010394pgv.176.1583224905988; 
 Tue, 03 Mar 2020 00:41:45 -0800 (PST)
Received: from VincentChen-ThinkPad-T480s.internal.sifive.com
 (220-132-236-182.HINET-IP.hinet.net. [220.132.236.182])
 by smtp.gmail.com with ESMTPSA id c3sm25076512pfj.159.2020.03.03.00.41.43
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 03 Mar 2020 00:41:45 -0800 (PST)
From: Vincent Chen <vincent.chen@sifive.com>
To: gregkh@linuxfoundation.org, jslaby@suse.com, palmer@dabbelt.com,
 paul.walmsley@sifive.com
Subject: [PATCH] tty: serial: Add CONSOLE_POLL support to SiFive UART
Date: Tue,  3 Mar 2020 16:41:40 +0800
Message-Id: <1583224900-25824-1-git-send-email-vincent.chen@sifive.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_004147_704539_62C0FFB9 
X-CRM114-Status: GOOD (  10.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
---
 drivers/tty/serial/sifive.c | 27 +++++++++++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/drivers/tty/serial/sifive.c b/drivers/tty/serial/sifive.c
index d5f81b98e4d7..acdbaca4de36 100644
--- a/drivers/tty/serial/sifive.c
+++ b/drivers/tty/serial/sifive.c
@@ -818,6 +818,29 @@ static int __init sifive_serial_console_setup(struct console *co, char *options)
 	return uart_set_options(&ssp->port, co, baud, parity, bits, flow);
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
+	sifive_serial_console_putchar(port, c);
+	__ssp_wait_for_xmitr(ssp);
+}
+#endif /* CONFIG_CONSOLE_POLL */
+
 static struct uart_driver sifive_serial_uart_driver;
 
 static struct console sifive_serial_console = {
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


