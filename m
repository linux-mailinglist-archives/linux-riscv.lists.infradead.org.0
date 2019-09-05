Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25A9EAA376
	for <lists+linux-riscv@lfdr.de>; Thu,  5 Sep 2019 14:46:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=CA+KwyBPE95TPSAS2x3oEEZ1oXakBKJiVFHlkRNl/R0=; b=YQD
	w1r4Fqy4yGAuPb5A2nuw1m7RQKDgw1eZMDybGlpYOJ0poAlBzMzcr8C29IJd4g/QrQW6VXII0uxi3
	Ed7FCRMvKAL+2VCwLHdiHMEx4ZXO3PlNlgKD51vsFC0Z1Hy2viMnr8Gx8oumi2dJ/G6mhrLoKXhvD
	D5i1/N1qPT8ETpgmZ9x/6gXTjrrWlBtP+OUe0B2QAZw1kDmNSb0+hrIb98MBUM8iO3L7DRdFDGkN6
	UzaF/HPj2ohlFjteRe2HUeUqTl0Wc4vds/KDz5hZ94ebq5b8QY9ROwfxyqgXKu+0P4LO0zg2VWC6h
	i0g5lMJT7YLMfj5LGfbaPtNr6oW050g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5r9d-0001Xv-8T; Thu, 05 Sep 2019 12:46:25 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5r9Z-0001XD-Ne
 for linux-riscv@lists.infradead.org; Thu, 05 Sep 2019 12:46:22 +0000
Received: by mail-pl1-x641.google.com with SMTP id gn20so1263336plb.2
 for <linux-riscv@lists.infradead.org>; Thu, 05 Sep 2019 05:46:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=AR21odD9lkUkw6UTbUz0v0ot901NBSStVHxLTmWtokQ=;
 b=tAAU8v7jHjwov7FgdyjSS2n+TwN+DJEnPpo5BBWuRs+0ifGrSrcbTybiLFX+rtmgP6
 gTbAYKFUbGB9lDJLaF2TwJ71TXOC9ii9U3XPvSwDTVDOxFdvtqEXOupk3kFrncCzC2Hm
 FCVhcC3rEzfgS7MKtA0GE/WKQ+IBsPtd4xevP1W3gUkS5gCHXuqg9X+iCGeOaFY7Dr3Q
 6Dhs1v94FlRyKWiT991ZW39XbdrqKi7KKBCUse4G+IhaKFPQGQyu7C77ogKeVmajhLD3
 zUONdTy0cb7WIaUhIgLqerTKfxFxfZfNkKcalQEFZiLN80oMKKDppJv4NgC3DsByxk3Y
 DTvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=AR21odD9lkUkw6UTbUz0v0ot901NBSStVHxLTmWtokQ=;
 b=lf6uf7kIY5nWwh2bBg/n/l5t7Q99e58LKMrmzNguYnUWhTgiCKjjjeFmHrQy4180Xx
 hl4NjU88kjs478iBdRAVuf8+Y4S/2GkCN/OZjvKhIDMZvdn1bj4erDlcM/xJ81MBmkE9
 QznCxGdAutgIgcnQ4vb4P4gvP0Vh71LmIRul8/8t6Rmm8ESaI1C06n8/eLggAq//v/Lx
 mmZhFugwJipI/MYbh7SpIe1sZmXNf9IQU12Ejj9Jt0wUC8DEa0nRsgQiNaCwff8PEaCk
 DqcCmRtn2D2RxnEem4SzryGOHr5GijhSLDC24txk4eJtbm6rRpxqQlnEaF4bdyF5Q1+M
 3RZg==
X-Gm-Message-State: APjAAAVnIAHSLC2O2LdOEJD7iCLpWuxeTNAy011hcB9l2FRoycR42UZZ
 bD9Awn9qbfqgtVeYneNofjdKmFTF
X-Google-Smtp-Source: APXvYqxxIiiCGHUr4lP9Eq+nSIH+iyXFJMCj2pkctamr2F3AQ30yECuCtFk6zvQO18+YJcfYkuLZFQ==
X-Received: by 2002:a17:902:169:: with SMTP id
 96mr3027576plb.297.1567687580305; 
 Thu, 05 Sep 2019 05:46:20 -0700 (PDT)
Received: from localhost.localdomain (unknown-224-80.windriver.com.
 [147.11.224.80])
 by smtp.gmail.com with ESMTPSA id k1sm2334268pfi.132.2019.09.05.05.46.19
 (version=TLS1 cipher=AES128-SHA bits=128/128);
 Thu, 05 Sep 2019 05:46:19 -0700 (PDT)
From: Bin Meng <bmeng.cn@gmail.com>
To: Palmer Dabbelt <palmer@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>
Subject: [PATCH] riscv: dts: sifive: Add ethernet0 to the aliases node
Date: Thu,  5 Sep 2019 05:46:14 -0700
Message-Id: <1567687574-22436-1-git-send-email-bmeng.cn@gmail.com>
X-Mailer: git-send-email 1.7.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_054621_770572_676BD362 
X-CRM114-Status: UNSURE (   9.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bmeng.cn[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

U-Boot expects this alias to be in place in order to fix up the mac
address of the ethernet node.

Signed-off-by: Bin Meng <bmeng.cn@gmail.com>
---

 arch/riscv/boot/dts/sifive/fu540-c000.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
index a9d48ff..9e55c22 100644
--- a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
+++ b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
@@ -13,6 +13,7 @@
 	aliases {
 		serial0 = &uart0;
 		serial1 = &uart1;
+		ethernet0 = &eth0;
 	};
 
 	chosen {
-- 
2.7.4


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
