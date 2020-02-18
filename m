Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D4F51634DC
	for <lists+linux-riscv@lfdr.de>; Tue, 18 Feb 2020 22:26:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:From:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Reply-To:
	Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Ob4F7Zc/CC8Yx9KP84xkrimcDuVTXWqaQeMzzy8qK6Q=; b=EnJImLGBx/NL4+
	Khqu4ciT+y47Cd8M6xllGK5C4/zv8T2VesgIF3Y0+HLj31V3p7+e2DZRljjP/xPmzRneVXzPdW3yX
	atK/FwCpb2aFspIiNMKbM16GsDbxs0gkbZtV+Zz5Q+G8ZDtaHrDL6Npu6GtrNX6hjHj7qQq1bsLBR
	BFILix19sqbGpxDH3xx3EZbhgEYCe6ho9Eeu34bvac4RVZ7nKgNK8AjPX4X6XpQAwhFxVFCAdad2K
	uaE9poQI2ZUkyA+hE7/D0O6cmgd3yDSoioV0r8lc5Afv1tOK8V4O2IaS2TJSitk8hIKIgZ4WZaULQ
	DkmUnl3l0lfxdld/4+MQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4AOM-00067x-VU; Tue, 18 Feb 2020 21:26:54 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4AOJ-00067F-3s
 for linux-riscv@lists.infradead.org; Tue, 18 Feb 2020 21:26:52 +0000
Received: by mail-pg1-x542.google.com with SMTP id b9so11435308pgk.12
 for <linux-riscv@lists.infradead.org>; Tue, 18 Feb 2020 13:26:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=subject:date:message-id:mime-version:content-transfer-encoding:cc
 :from:to; bh=Ob4F7Zc/CC8Yx9KP84xkrimcDuVTXWqaQeMzzy8qK6Q=;
 b=NpCi9ixHszPsTnITzvSGab1Jn40QzgP4l93aMB6c/6dr6pFNZWoMxKdgdS8u1QeY1T
 URjXWbZAz7AjuPYT4utr1B4Vws1CaJ3ZJs0lirgmfVbea7NbJBlUa7Owt0q8R+L0ki0b
 9vbf2zp6pX47/3c0ltUKPgXIkGTm61PA2TgO+wXewfr29dQy2ZYBe4lY9AbuJANsiLs1
 YtyozZsuVqcn203s2TN7Nj+rUflOg7OlZ4KfoUzsve62qIbFB7JWvBefEaJUg06Ly29T
 3K4MClazstdS4r7MXXscXyXAwU7lLN3jzuBTQe+J7xyhPNqlioil6e/93U7vJqM6m+Oj
 2esQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:date:message-id:mime-version
 :content-transfer-encoding:cc:from:to;
 bh=Ob4F7Zc/CC8Yx9KP84xkrimcDuVTXWqaQeMzzy8qK6Q=;
 b=e0k1/rpiwrlcmVC0pccLhlAWO6sMIHE70PR/6Qs4Vw1wrzrh9Kg2LlZ9O9JKNNvsML
 o5cnEwCwzE1Jh6hWYHXgBG+2l1YPAmm8vnObmEH8iyUyD0WuVnotCF412RuCoOGS2LGv
 FaxT3D1GiNmxVhB9/wct9aaYF12UukA8WdRZ154eISK85N8ovq+0pncU8GdmjHtSpaof
 FslPm4a/NTunqgxih8QGyDJGa4IynulfRz/NOuzb7VqEJQTdBp+6RnNCGjC2WRmyxXPm
 zyC3NJpdHZtR4g3333niypNmJp0nQGBbEBrTmcB3IiYWhQy2S6VmmVeoF57+vPYdb0C5
 VVeQ==
X-Gm-Message-State: APjAAAVQ68DL/59Azm5lsX1PoKENxi8ZQzjC8l3k7KP/B/BKfNEEFv+J
 FeXLCt1n7i1FJtwVugDtVnrLF9q6p84=
X-Google-Smtp-Source: APXvYqzYLIron7wG+46I5/xrQjfh+vvXs/wBtuiah+lUWRZQ9qn0cCYlDZDMXx6+bfsdQagmZ3BqJA==
X-Received: by 2002:aa7:9aa7:: with SMTP id x7mr22460476pfi.78.1582061209996; 
 Tue, 18 Feb 2020 13:26:49 -0800 (PST)
Received: from localhost ([2620:0:1000:2514:23a5:d584:6a92:3e3c])
 by smtp.gmail.com with ESMTPSA id fh24sm4230120pjb.24.2020.02.18.13.26.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 18 Feb 2020 13:26:49 -0800 (PST)
Subject: [PATCH] RISC-V: Stop putting .sbss in .sdata
Date: Tue, 18 Feb 2020 13:25:01 -0800
Message-Id: <20200218212501.85799-1-palmer@dabbelt.com>
X-Mailer: git-send-email 2.25.0.265.gbab2e86ba0-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Palmer Dabbelt <palmer@dabbelt.com>
To: linux-riscv@lists.infradead.org, zong.li@sifive.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_132651_207232_78356248 
X-CRM114-Status: GOOD (  10.59  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: android-kernel-team@google.com, Palmer Dabbelt <palmerdabbelt@google.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

From: Palmer Dabbelt <palmerdabbelt@google.com>

I don't know why we were doing this, as it's been there since the beginning.
After d841f729e655 ("riscv: force hart_lottery to put in .sdata section") my
guess would be that it made the kernel boot and we forgot to fix it more
cleanly.

The default .bss segment already contains the .sbss section, so we don't need
to do anything additional to ensure the symbols in .sbss continue to work.

Signed-off-by: Palmer Dabbelt <palmerdabbelt@google.com>
---
 arch/riscv/kernel/vmlinux.lds.S | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/riscv/kernel/vmlinux.lds.S b/arch/riscv/kernel/vmlinux.lds.S
index 1e0193ded420..a8fb52a00295 100644
--- a/arch/riscv/kernel/vmlinux.lds.S
+++ b/arch/riscv/kernel/vmlinux.lds.S
@@ -64,7 +64,6 @@ SECTIONS
 		*(.sdata*)
 		/* End of data section */
 		_edata = .;
-		*(.sbss*)
 	}
 
 	BSS_SECTION(PAGE_SIZE, PAGE_SIZE, 0)
-- 
2.25.0.265.gbab2e86ba0-goog


