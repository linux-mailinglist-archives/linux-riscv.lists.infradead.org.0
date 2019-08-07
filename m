Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 650B984275
	for <lists+linux-riscv@lfdr.de>; Wed,  7 Aug 2019 04:30:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jpobHcW1LQj/ROTumNIKhMNqjixgAalr3uiLgD3g60w=; b=KC90gpR0QiZNTD
	Dh+T80L+MCbcbEt6asrb3JVRCol/4VcIlR82VYHjv/BA9LfehgFO9vsnosd0SHIbnF2vS6D8W7DF5
	ySINUoqXNJk3FxTScidJ9txYbKYkOEvYhqw4/4SEjDxLnmqHZb4uCYYVaeM5wOzAjOyFvNnI854xh
	YsamCgtdxSSRiG46rk61rnXayh5nWXD5OncUUqagtdl+zGJ5JSrbw93iO3kDD5Oj1OiRJXwKYjmG/
	sbO4o2IXNjEe8NrWYLnSG0DFjVG0Qtl13eTAb8SUx85TbKyZE+cxZBn6g22szLDSz3OxYK+feV7GD
	UZy1U0XFh96pa2EBSwVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvBih-00015x-Mm; Wed, 07 Aug 2019 02:30:31 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvBif-00015K-5E
 for linux-riscv@lists.infradead.org; Wed, 07 Aug 2019 02:30:30 +0000
Received: by mail-ot1-x342.google.com with SMTP id z23so69951006ote.13
 for <linux-riscv@lists.infradead.org>; Tue, 06 Aug 2019 19:30:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:message-id:user-agent:mime-version;
 bh=fcElZ7wudLl4OkkEiYYbZc12nuQcPIrxhzg+jbUkCuA=;
 b=UDOJPO3zORas6F4lihQxqeo6VOtTY+/Xof7TmRXnf8qQUc4oez8VQ/ykzcGIVigsL4
 GJUsYrn9ctOdXiLvrCEuuAkVfhfbC/4RNOx9O8f6r+ALL9lk0XaWiEZefw8Gikyg70j7
 YWiReY8nHjjs37lp24se6ySXefKSqFwgxZet5atWG7LwNkf+o46yRjA8XmKuXrDs803m
 FdwKFQGlB8fMBtl/0FCegXzTLcqfvF5Oyy0NpUDd07EwRJtE3wSUgBSj+3/xGh07JVBe
 m7mO//rTcZJzlpA1SlT7YukYp28nav+zwLLex55kBNQfGLdHK2CB9TjxYd93qXzYdjGp
 op3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:user-agent
 :mime-version;
 bh=fcElZ7wudLl4OkkEiYYbZc12nuQcPIrxhzg+jbUkCuA=;
 b=Q963Bk8q8A+Wo1c2ZNAyMw07MmJaDEC5KrGTCq5NS7X19emMxw1tgpASFY4fJm4bSf
 KzygFPBdUo5NUa5chFJTlv7/ek1pjqzEa9FgJcZIm9gqk8VYhFa1f723GlGzwFBDJaCQ
 dvWWRGhgOnGrBcFhrhw8ybxCZcv4ZKsKo97tWtbEouf4Q294ISrGfqjbd6eBm+ueQbaE
 C9JNI4BnvNWBIaY/TpJyil5lAwECgbBQv0ggwFcFIQk6sP1fpDp0rad6UPBcLtebgEvP
 A895WMsloZKmz0brJ0YN0D9yB7V3n8Zdsa8y/dKkztOZ7YCBSKrjQnaVgg5aiciQWZWj
 RgpA==
X-Gm-Message-State: APjAAAWQsV64sm/ILFfmCaI9Jk0JihzzaYvZ93fRPErV1QhkSvXa/KQl
 KQ68bQnR1RV9CxVgCOLoIPA0n9feWgM=
X-Google-Smtp-Source: APXvYqy5awZKyZbsdh5g/oDEBb/x5E1IQyxC8xQ0M2N6V6fiNDKO+jW2FnJkWzfnrjdoiyAlwXiY8Q==
X-Received: by 2002:a05:6638:40c:: with SMTP id
 q12mr7740016jap.17.1565145026561; 
 Tue, 06 Aug 2019 19:30:26 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
 by smtp.gmail.com with ESMTPSA id
 y20sm73451455ion.77.2019.08.06.19.30.25
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 06 Aug 2019 19:30:25 -0700 (PDT)
Date: Tue, 6 Aug 2019 19:30:24 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: linux-riscv@lists.infradead.org
Subject: [PATCH] riscv: kbuild: drop CONFIG_RISCV_ISA_C
Message-ID: <alpine.DEB.2.21.9999.1908061929230.19468@viisi.sifive.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_193029_212255_9C8A0545 
X-CRM114-Status: UNSURE (   9.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: atish.patra@wdc.com, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org


The baseline ISA support requirement for the RISC-V Linux kernel
mandates compressed instructions, so it doesn't make sense for
compressed instruction support to be configurable.

Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
Cc: Atish Patra <atish.patra@wdc.com>

---
 arch/riscv/Kconfig  | 10 ----------
 arch/riscv/Makefile |  2 +-
 2 files changed, 1 insertion(+), 11 deletions(-)

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index 59a4727ecd6c..8c5b9329ec46 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -197,16 +197,6 @@ config TUNE_GENERIC
 
 endchoice
 
-config RISCV_ISA_C
-	bool "Emit compressed instructions when building Linux"
-	default y
-	help
-	   Adds "C" to the ISA subsets that the toolchain is allowed to emit
-	   when building Linux, which results in compressed instructions in the
-	   Linux binary.
-
-	   If you don't know what to do here, say Y.
-
 menu "supported PMU type"
 	depends on PERF_EVENTS
 
diff --git a/arch/riscv/Makefile b/arch/riscv/Makefile
index 7a117be8297c..e23e066c55e2 100644
--- a/arch/riscv/Makefile
+++ b/arch/riscv/Makefile
@@ -38,7 +38,7 @@ endif
 riscv-march-$(CONFIG_ARCH_RV32I)	:= rv32ima
 riscv-march-$(CONFIG_ARCH_RV64I)	:= rv64ima
 riscv-march-$(CONFIG_FPU)		:= $(riscv-march-y)fd
-riscv-march-$(CONFIG_RISCV_ISA_C)	:= $(riscv-march-y)c
+riscv-march-y				:= $(riscv-march-y)c
 KBUILD_CFLAGS += -march=$(subst fd,,$(riscv-march-y))
 KBUILD_AFLAGS += -march=$(riscv-march-y)
 
-- 
2.22.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
