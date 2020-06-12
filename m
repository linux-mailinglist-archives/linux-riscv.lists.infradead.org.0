Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D33CC1F746B
	for <lists+linux-riscv@lfdr.de>; Fri, 12 Jun 2020 09:10:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4+NJ3t8NefDvMBlOVrpO6HJOHxIomSxMyV3y0MN34qw=; b=gnDbrkHK0/OjBtS0sBHjnkkC/z
	fz6ss+Z/Eiyk/R7xQ+RXcWi4bMlnGceSz78fAXDBLXCyasDLA0/0lVChieMHVPm/s1sH6XQS4KWcd
	78SLqFi/UGlDqXVRYFKC9drkfs4BKXfNVyRcBuIs+zhEgxERPJcf3xwPkEM9JoGcRSZVIAiIsbkvG
	ctpXKMCcla/q/2Gs2eO9CzJiWijRbOXioDC6YUWKm1o6pqfQTQMhylRsp0lAtkBE6nEuSens3Bkac
	SPGMFxKiOdiZtz18Y8aHsK6YqsAk3PjE35s1HGICzFPu35ADMVBdpmtYCfRX7bfnGMT3LueoXvPRZ
	bBYz3+ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjdpp-0005RG-9a; Fri, 12 Jun 2020 07:10:41 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjdpY-0005CV-PA
 for linux-riscv@lists.infradead.org; Fri, 12 Jun 2020 07:10:26 +0000
Received: by mail-pg1-x541.google.com with SMTP id b5so2756429pgm.8
 for <linux-riscv@lists.infradead.org>; Fri, 12 Jun 2020 00:10:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=4+NJ3t8NefDvMBlOVrpO6HJOHxIomSxMyV3y0MN34qw=;
 b=f1Z7wn8ODMszNV5yRo5L00AOwSuvcWankDXBey/J0QSLJG9bar/NSgUX25Wf91d1YQ
 5jTTw17cQ1hw7xOBPBBQ9dTwf/asfw6P4tueUtHCjF6xfDYqvxV+RbjLrEf3JSYufQrq
 SVFqIwb6LJdn0xkyOOzidLm8X73EuPp9qtXWZORQIpHfsKWED3a62HM+Y6vnNy8R9OYX
 mZnTkDgGWrW/CVOneAPhCKGFArrxn/ktvFFwvSZppc2iPRm8nHWorVISFKCnohdbsYEc
 xMtJi/eOG58tRvohlc9pV8PNIPF5KlTlxs79VRmAmjTH/CXwVma5BI1Ymc36kILlHImI
 D+0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4+NJ3t8NefDvMBlOVrpO6HJOHxIomSxMyV3y0MN34qw=;
 b=CgRESzkbb+rcOOs9sM6C8XHLLu/b0OrDL4L5Yyt/UCq2J2ROPDI/SEFHi+E4GGh9a1
 vA1igkGG//ARITuwqyd5GA6AtNN1dwhDDIaVkiCaNAhykx5IR8JeZZEeqeuTRs7XH8LD
 mxHDS7212N0qb7aeekMyy45j8inVFmw0Nhb/QK3uiLVulTlxcz1KImAUsiucpyDil18V
 g1KAXoLWfkOQsmhxxaLtp5jz9Nm8dI25PksoMShaSwJqu7PPRouh46T0rmViAwOBp3Jh
 awc/qRe54h1IAVl/tOoM+5sv9XMq4iCvgMnpdzU4nuULt43jWMKiUxXpoUvCFykwEqbV
 JhWw==
X-Gm-Message-State: AOAM530rqv5/fogY/1JqfUCPATrS9GFWOzLV/24AlxkEkpq5q2lMwXe3
 9qYyV0XBZ0Vwiq9pjaPvQnvsdA==
X-Google-Smtp-Source: ABdhPJxIEogp+RWDoHXMgGJLewWmgiLwJtVEzXgBro7HgtTSJx6CPinawDSwZAjC+NoKJKtLZwdlng==
X-Received: by 2002:aa7:9439:: with SMTP id y25mr10621687pfo.268.1591945823802; 
 Fri, 12 Jun 2020 00:10:23 -0700 (PDT)
Received: from hsinchu02.internal.sifive.com
 (114-34-229-221.HINET-IP.hinet.net. [114.34.229.221])
 by smtp.gmail.com with ESMTPSA id d2sm4336919pgp.56.2020.06.12.00.10.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Jun 2020 00:10:23 -0700 (PDT)
From: Greentime Hu <greentime.hu@sifive.com>
To: greentime.hu@sifive.com, oleg@redhat.com, guoren@linux.alibaba.com,
 vincent.chen@sifive.com, paul.walmsley@sifive.com,
 palmerdabbelt@google.com, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 06/13] riscv: Add vector feature to compile
Date: Fri, 12 Jun 2020 15:09:55 +0800
Message-Id: <cd64796afb84d9f3d97168fbfead633c15f68ce3.1591344965.git.greentime.hu@sifive.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <cover.1591344965.git.greentime.hu@sifive.com>
References: <cover.1591344965.git.greentime.hu@sifive.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_001024_907717_D1DFBDA2 
X-CRM114-Status: UNSURE (   8.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

From: Guo Ren <guoren@linux.alibaba.com>

This patch adds a new config option which could enable assembler's
vector feature.

Signed-off-by: Guo Ren <guoren@linux.alibaba.com>
---
 arch/riscv/Kconfig  | 9 +++++++++
 arch/riscv/Makefile | 1 +
 2 files changed, 10 insertions(+)

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index 74f82cf4f781..3b742d949a09 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -305,6 +305,15 @@ config FPU
 
 	  If you don't know what to do here, say Y.
 
+config VECTOR
+	bool "VECTOR support"
+	default n
+	help
+	  Say N here if you want to disable all vector related procedure
+	  in the kernel.
+
+	  If you don't know what to do here, say Y.
+
 endmenu
 
 menu "Kernel features"
diff --git a/arch/riscv/Makefile b/arch/riscv/Makefile
index 957d064bead0..7c80c95582e3 100644
--- a/arch/riscv/Makefile
+++ b/arch/riscv/Makefile
@@ -46,6 +46,7 @@ riscv-march-aflags-$(CONFIG_ARCH_RV32I)		:= rv32ima
 riscv-march-aflags-$(CONFIG_ARCH_RV64I)		:= rv64ima
 riscv-march-aflags-$(CONFIG_FPU)		:= $(riscv-march-aflags-y)fd
 riscv-march-aflags-$(CONFIG_RISCV_ISA_C)	:= $(riscv-march-aflags-y)c
+riscv-march-aflags-$(CONFIG_VECTOR)		:= $(riscv-march-aflags-y)v
 
 KBUILD_CFLAGS += -march=$(riscv-march-cflags-y)
 KBUILD_AFLAGS += -march=$(riscv-march-aflags-y)
-- 
2.27.0


