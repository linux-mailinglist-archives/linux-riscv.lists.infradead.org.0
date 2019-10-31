Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0DB8EBB4E
	for <lists+linux-riscv@lfdr.de>; Fri,  1 Nov 2019 00:56:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LUaHyPVNKkutU21vKhzgLQ/nZYKFHiglkWE41b8kFtk=; b=l3TvCvNOazXqZV
	yQyPX2HQ8uuxatauu6naLku/DPO+4W8bkwK+b1wmJJSHWRa3TV+OriOEw3+zC5Uu2llHuIIvSZGwb
	i34cq0Q52dRycLEzeWlF7X3OST9LcYxsM4Tpo9filkfXAMCBiI3a0aAaEiB9E5bFyDbfLyqL6wqzF
	8GzVFxkLmqs48ClfE6W5iEBD8/CuP1OxY2SwQBQmYo9YY12yomEJuDpu0Ft0OWT81rs77YNxc0O4M
	oROKZy/F9hge9eKVdFaOKcAbMEutnkozD1gp30vp9VhwM5rW1X/ob97/4nuHUAMe92aXVLvVusANl
	ustTOhVn49gDjVhhA5fA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQKIw-0001A7-Lt; Thu, 31 Oct 2019 23:56:38 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQKIs-00019Q-O5
 for linux-riscv@lists.infradead.org; Thu, 31 Oct 2019 23:56:36 +0000
Received: by mail-io1-xd41.google.com with SMTP id 18so8948090ion.6
 for <linux-riscv@lists.infradead.org>; Thu, 31 Oct 2019 16:56:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=/fnQra9d+cV+1M9gZD3yWkRXYXxESEWySrRcy1ZQ884=;
 b=jFkAPuVVbTiZQwRT+6JgakTwHUqWbofDYBVITUw8pN08LshcDUd/oVj2dI7th601+8
 TTqVgro+D1ceDEO9npCbqiYcbeAWQcVvgs0AJKGgBPsenS/zBdBsV/YUDDNcRW6fy+Zy
 r3CX1h0iNWq0Z4jRyr+u43bA1NCTAqjlbeaoe5wLvdbvjZOOKRSu5VZipIB5RDrAD92X
 Za8OPIV/kkts6gTvUcSIjrkr5O77cnHjbWvbvrDW+UcEEbhBi4W+iv2puGFM7iMT1k0J
 QIjdg5rZMtq82oiUlsA1XmU+pn7qAc5UD1iQkIxeO/m2mRI0i/P7j8l3PZBa0h2wNghl
 Jwcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=/fnQra9d+cV+1M9gZD3yWkRXYXxESEWySrRcy1ZQ884=;
 b=h5WyT8wOQRVFKtXm/BtgemzxwtZV1pBb6WiN4zQ3Y2yH7SU9EGAF11y3UB4xeO24h4
 NcFXbcgVsVvm5Eo2rUWqSkmx1WVXeCnjjTlzatTnBib8BcDXDyfN380DXgtY7G1GMmi1
 iIJOIO0sIaALtlLkkx0DqPwk9TZd6InA5006UnP8zjDSiwbzo+mS7/sWrhf3SuzfRt/N
 vnYCJpafkDLjy6ingsubyc+0rT4CaFD+wDFIulCA6/iQPS5fgBz4oiamMahPWOBimItR
 ZwRySd6UucYSkYRwnKWk9DZgJeAkuodgPdgXgRfEYb1RoHbkhrIh5eRj185ovyVBi4sm
 2wTg==
X-Gm-Message-State: APjAAAVL+z2ke2pEcCIQBK7k/yIcCPxWELiIWDX918rpVhNZB94CECBV
 Wtzra/kRfi5uNJswlq1zvd1jGf0pBvg=
X-Google-Smtp-Source: APXvYqyieA3Tp6DtjKlQJqY+H7eiSAZWJm9Zhno/zJ+6iwEp6L11GD81J3wKgOoDEpx0lICfPhEy2g==
X-Received: by 2002:a5d:9741:: with SMTP id c1mr7181277ioo.25.1572566193714;
 Thu, 31 Oct 2019 16:56:33 -0700 (PDT)
Received: from localhost ([64.62.168.194])
 by smtp.gmail.com with ESMTPSA id 9sm658009ilv.57.2019.10.31.16.56.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 31 Oct 2019 16:56:33 -0700 (PDT)
Date: Thu, 31 Oct 2019 16:56:31 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 04/12] riscv: cleanup the default power off implementation
In-Reply-To: <20191028121043.22934-5-hch@lst.de>
Message-ID: <alpine.DEB.2.21.9999.1910311655320.25874@viisi.sifive.com>
References: <20191028121043.22934-1-hch@lst.de>
 <20191028121043.22934-5-hch@lst.de>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_165634_786446_464BE196 
X-CRM114-Status: GOOD (  17.43  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.1 URIBL_SBL_A Contains URL's A record listed in the Spamhaus SBL
 blocklist [URIs: brainfault.org]
 0.6 URIBL_SBL Contains an URL's NS IP listed in the Spamhaus SBL
 blocklist [URIs: brainfault.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Damien Le Moal <damien.lemoal@wdc.com>, Anup Patel <anup@brainfault.org>,
 Palmer Dabbelt <palmer@sifive.com>, linux-kernel@vger.kernel.org,
 Atish Patra <atish.patra@wdc.com>, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 28 Oct 2019, Christoph Hellwig wrote:

> Move the sbi poweroff to a separate function and file that is only
> compiled if CONFIG_SBI is set.  Provide a new default fallback
> power off that just sits in a wfi loop to save some power.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> Reviewed-by: Anup Patel <anup@brainfault.org>
> Reviewed-by: Atish Patra <atish.patra@wdc.com>

And here's the other part of this patch, queued for v5.5-rc1.


- Paul


From: Christoph Hellwig <hch@lst.de>
Date: Mon, 28 Oct 2019 13:10:35 +0100
Subject: [PATCH] riscv: cleanup the default power off implementation

Move the sbi poweroff to a separate function and file that is only
compiled if CONFIG_SBI is set.

Signed-off-by: Christoph Hellwig <hch@lst.de>
Reviewed-by: Anup Patel <anup@brainfault.org>
Reviewed-by: Atish Patra <atish.patra@wdc.com>
[paul.walmsley@sifive.com: split the WFI fix into a separate patch]
Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
---
 arch/riscv/kernel/Makefile |  1 +
 arch/riscv/kernel/reset.c  |  2 --
 arch/riscv/kernel/sbi.c    | 17 +++++++++++++++++
 3 files changed, 18 insertions(+), 2 deletions(-)
 create mode 100644 arch/riscv/kernel/sbi.c

diff --git a/arch/riscv/kernel/Makefile b/arch/riscv/kernel/Makefile
index 696020ff72db..d8c35fa93cc6 100644
--- a/arch/riscv/kernel/Makefile
+++ b/arch/riscv/kernel/Makefile
@@ -41,5 +41,6 @@ obj-$(CONFIG_DYNAMIC_FTRACE)	+= mcount-dyn.o
 obj-$(CONFIG_PERF_EVENTS)	+= perf_event.o
 obj-$(CONFIG_PERF_EVENTS)	+= perf_callchain.o
 obj-$(CONFIG_HAVE_PERF_REGS)	+= perf_regs.o
+obj-$(CONFIG_RISCV_SBI)		+= sbi.o
 
 clean:
diff --git a/arch/riscv/kernel/reset.c b/arch/riscv/kernel/reset.c
index 485be426d9b1..ee5878d968cc 100644
--- a/arch/riscv/kernel/reset.c
+++ b/arch/riscv/kernel/reset.c
@@ -5,11 +5,9 @@
 
 #include <linux/reboot.h>
 #include <linux/pm.h>
-#include <asm/sbi.h>
 
 static void default_power_off(void)
 {
-	sbi_shutdown();
 	while (1)
 		wait_for_interrupt();
 }
diff --git a/arch/riscv/kernel/sbi.c b/arch/riscv/kernel/sbi.c
new file mode 100644
index 000000000000..f6c7c3e82d28
--- /dev/null
+++ b/arch/riscv/kernel/sbi.c
@@ -0,0 +1,17 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include <linux/init.h>
+#include <linux/pm.h>
+#include <asm/sbi.h>
+
+static void sbi_power_off(void)
+{
+	sbi_shutdown();
+}
+
+static int __init sbi_init(void)
+{
+	pm_power_off = sbi_power_off;
+	return 0;
+}
+early_initcall(sbi_init);
-- 
2.24.0.rc0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
