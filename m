Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8945E17CBE8
	for <lists+linux-riscv@lfdr.de>; Sat,  7 Mar 2020 05:28:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:From:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Reply-To:
	Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JqEEYRC8D7J1sqL+MKbRyD3O12DI0rJhBdywb3r67aQ=; b=JfgieTxe0QuKBI
	J3gwZnd1/tyZX1LzGmwlGCCjt4+onmJx+8Dn1l1fQfxMUGv03FhFqRXc3F+u4FIO6Tvjmm2GJ0Ftu
	BAEiavkpuFWjRoCVna5699z12ljjNDQsDjhhY0q2wz9rif+62CdoNjHZlSg0uSIkRvCAmK8rQUG+u
	9hbrRpm+wrkKcn5IONCkJ8EjiBAV5lfg4tS7ZHg80czBt2jPSteDWGiHcC273KMSObzsCt0QhrSG4
	NW49kB4r6x1SozsHDaajPeyQhvfJ+WEE7t+8T0NtIxw/xUyafJDVLttWGZgFwvF6vh7lq0dqf8SWy
	zwJTdW+8QCWqVS+CdD9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAR4s-0003BP-K9; Sat, 07 Mar 2020 04:28:42 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAR4o-0003Au-PU
 for linux-riscv@lists.infradead.org; Sat, 07 Mar 2020 04:28:40 +0000
Received: by mail-pl1-x641.google.com with SMTP id j20so1694228pll.6
 for <linux-riscv@lists.infradead.org>; Fri, 06 Mar 2020 20:28:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=subject:date:message-id:mime-version:content-transfer-encoding:cc
 :from:to; bh=JqEEYRC8D7J1sqL+MKbRyD3O12DI0rJhBdywb3r67aQ=;
 b=O08IJSgT9RRdq5UtU96pn7QHniy1dRZmoBOegNea4qVsuG7GW4BGZ1kf24iIzptTXj
 n12w1q4o+KIEoHoIhFfdSgeBm5XuRuIxmHbXtULepqatTSsPw78lALhRAEgTBpyoIaHB
 nKnb2PU1MabuA19gEBBI+cXC5+ri0TUQ6n+QlxLtFShaTABIHCgHCBS0koOv2cBd551h
 7E/h3zaZ7x00dpfRzG59m56yMOrtuzyBH9W0rCYcafyls/igaqSl60l+KpdzA5ekQb1a
 7SqiRqL31fJkJpkzGf5bPIhMM5x3CpqPoNM+XfOofd6TdIi/mvsLGTn5wTGO/L8rpIJ1
 IjgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:date:message-id:mime-version
 :content-transfer-encoding:cc:from:to;
 bh=JqEEYRC8D7J1sqL+MKbRyD3O12DI0rJhBdywb3r67aQ=;
 b=HBUqwTVdtpOFJ9l9OXx41R7cqwt3lHtfM+yxIfogGk9kNrFXx8opLnEt2g6kYe53J/
 gHgytKKCK3QbPvXib20oM/nzflQBgSy7K1upQm02wiXJsyg+s8oFrkID4tdc61+wUL4u
 RMpAJzpA0iGPS1BTQTWP0NWOnMjkOITBMr9BYTGyl8veprkhpiQJC1HHGE9Nvd4QNdMK
 bxOJfv6qep8gxIj8dqcZ0qA+ChHnp1X5+AyafGpoTlzTn2BqA1ulneFnlolQAYF3GJuv
 QHSvDZ59EasJplVjKR1dswaeqVkVnbCtBu1T/nlNUO8jE9Ubdk86jf1nfsByK6swqMl0
 Cpxg==
X-Gm-Message-State: ANhLgQ1z2M+1Ab4q2mmvFw/ZrvrjDpnBt2wA8y3M6NEPG9rup9n7CtrN
 llTFGgDNss8h7yJ+ZSnVWJnImQ==
X-Google-Smtp-Source: ADFU+vsXktTJfbSIn4OTidMPzYwPYVCPRU5N0l5d8ObjtGHmgqRiAVuDkF3RXOj+/nOfBuMLYLNPAg==
X-Received: by 2002:a17:90a:20b:: with SMTP id
 c11mr6965847pjc.53.1583555317388; 
 Fri, 06 Mar 2020 20:28:37 -0800 (PST)
Received: from localhost (c-67-161-15-180.hsd1.ca.comcast.net. [67.161.15.180])
 by smtp.gmail.com with ESMTPSA id h4sm32082934pgq.20.2020.03.06.20.28.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 06 Mar 2020 20:28:36 -0800 (PST)
Subject: [PATCH] tty: sifive: Finish transmission before changing the clock
Date: Fri,  6 Mar 2020 20:26:38 -0800
Message-Id: <20200307042637.83728-1-palmer@dabbelt.com>
X-Mailer: git-send-email 2.25.1.481.gfbce0eb801-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Palmer Dabbelt <palmer@dabbelt.com>
To: Paul Walmsley <paul.walmsley@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_202838_969504_3F42B4E6 
X-CRM114-Status: GOOD (  21.70  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Palmer Dabbelt <palmerdabbelt@google.com>,
 Greg KH <gregkh@linuxfoundation.org>, jslaby@suse.com,
 linux-kernel@vger.kernel.org, Palmer Dabbelt <palmer@dabbelt.com>,
 linux-serial@vger.kernel.org, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv@lists.infradead.org, kernel-team@android.com
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

From: Palmer Dabbelt <palmerdabbelt@google.com>

SiFive's UART has a software controller clock divider that produces the
final baud rate clock.  Whenever the clock that drives the UART is
changed this divider must be updated accordingly, and given that these
two events are controlled by software they cannot be done atomically.
During the period between updating the UART's driving clock and internal
divider the UART will transmit a different baud rate than what the user
has configured, which will probably result in a corrupted transmission
stream.

The SiFive UART has a FIFO, but due to an issue with the programming
interface there is no way to directly determine when the UART has
finished transmitting.  We're essentially restricted to dead reckoning
in order to figure that out: we can use the FIFO's TX busy register to
figure out when the last frame has begun transmission and just delay for
a long enough that the last frame is guaranteed to get out.

As far as the actual implementation goes: I've modified the existing
existing clock notifier function to drain both the FIFO and the shift
register in on PRE_RATE_CHANGE.  As far as I know there is no hardware
flow control in this UART, so there's no good way to ask the other end
to stop transmission while we can't receive (inserting software flow
control messages seems like a bad idea here).

Signed-off-by: Palmer Dabbelt <palmerdabbelt@google.com>
---
I have not tested this, as I don't have any hardware.  I'm also not even
remotely familiar with the serial subsystem, so I don't know if there's a
better way of going about this.  I'm specifically worried about a udelay() that
could be quite long.  Maybe some sort of "delay for short times, sleep for long
times" approach would be better?

I don't know if this manifests in practice on existing hardware when running
real workloads, but I'd be willing to bet that it would be possible to trigger
the bug on purpose as by my calculations there's about a 10k cycle window in
which the clock can't change.  IIRC there's a lot of instability when changing
the clock frequency on the HiFive Unleashed so I doubt people are going to
stumble across the issue regularly in practice.

 drivers/tty/serial/sifive.c | 28 ++++++++++++++++++++++++----
 1 file changed, 24 insertions(+), 4 deletions(-)

diff --git a/drivers/tty/serial/sifive.c b/drivers/tty/serial/sifive.c
index d5f81b98e4d7..d34031e842d0 100644
--- a/drivers/tty/serial/sifive.c
+++ b/drivers/tty/serial/sifive.c
@@ -618,10 +618,10 @@ static void sifive_serial_shutdown(struct uart_port *port)
  *
  * On the V0 SoC, the UART IP block is derived from the CPU clock source
  * after a synchronous divide-by-two divider, so any CPU clock rate change
- * requires the UART baud rate to be updated.  This presumably could corrupt any
- * serial word currently being transmitted or received.  It would probably
- * be better to stop receives and transmits, then complete the baud rate
- * change, then re-enable them.
+ * requires the UART baud rate to be updated.  This presumably corrupts any
+ * serial word currently being transmitted or received.  In order to avoid
+ * corrupting the output data stream, we drain the transmit queue before
+ * allowing the clock's rate to be changed.
  */
 static int sifive_serial_clk_notifier(struct notifier_block *nb,
 				      unsigned long event, void *data)
@@ -629,6 +629,26 @@ static int sifive_serial_clk_notifier(struct notifier_block *nb,
 	struct clk_notifier_data *cnd = data;
 	struct sifive_serial_port *ssp = notifier_to_sifive_serial_port(nb);
 
+	if (event == PRE_RATE_CHANGE) {
+		/*
+		 * The TX watermark is always set to 1 by this driver, which
+		 * means that the TX busy bit will lower when there are 0 bytes
+		 * left in the TX queue -- in other words, when the TX FIFO is
+		 * empty.
+		 */
+		__ssp_wait_for_xmitr(ssp);
+		/*
+		 * On the cycle the TX FIFO goes empty there is still a full
+		 * UART frame left to be transmitted in the shift register.
+		 * The UART provides no way for software to directly determine
+		 * when that last frame has been transmitted, so we just sleep
+		 * here instead.  As we're not tracking the number of stop bits
+		 * they're just worst cased here.  The rest of the serial
+		 * framing parameters aren't configurable by software.
+		 */
+		udelay(DIV_ROUND_UP(12 * 1000 * 1000, ssp->baud_rate));
+	}
+
 	if (event == POST_RATE_CHANGE && ssp->clkin_rate != cnd->new_rate) {
 		ssp->clkin_rate = cnd->new_rate;
 		__ssp_update_div(ssp);
-- 
2.25.1.481.gfbce0eb801-goog


