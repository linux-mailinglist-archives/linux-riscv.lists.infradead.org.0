Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C21AA1E57B3
	for <lists+linux-riscv@lfdr.de>; Thu, 28 May 2020 08:41:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=82NB9lCPMwXynDeXK6u4yXJsBZGIDVjhoL3cA6mdRsQ=; b=QzunIF0CHfdYmn/Frvpcm0PBjK
	qfswSM4X0TFOQLtJAJkjn1FM3MXR+o8N+1/qw4a2gaCKsDq/PYv0Jwm2dqu5mrg5JwQeuRZ+x0uk8
	vDxgK4S0ZFeq1w0GbAGZGk353J+3fMMXLE3kZzMFCRgciy1rLLKnO6IOECRAzc+BdaVv2Xo0x5//H
	AA7r/Xz3BaEQh5WrPG7eGdQWqHuUyuhWMTsoKKIKnzTscjqB48Zkvaag/YF1nveMzlNq4yjiGJoox
	1XdsVCDRNnlYklIbTR8yEVKf0Mn+xHR41nDXfJdBvYNJ7R+CzeJnFR5UyS4qJOYp3R4ExMUv1aBY2
	a0dcV+cQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeCE8-0002y5-Lf; Thu, 28 May 2020 06:41:16 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeCE3-0002t1-NY
 for linux-riscv@lists.infradead.org; Thu, 28 May 2020 06:41:13 +0000
Received: by mail-pj1-x1044.google.com with SMTP id t8so2581937pju.3
 for <linux-riscv@lists.infradead.org>; Wed, 27 May 2020 23:41:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=82NB9lCPMwXynDeXK6u4yXJsBZGIDVjhoL3cA6mdRsQ=;
 b=bmB1UJf8gpuxPRCB+XRx67sSBKWiEBE/R42DEzA16KYeAq+ifi6W6BVWNSYpIefiYJ
 7RN8ZZJFBEbGfW/JCCMgkkUvSZMeP73CDEa7jWyI5U7pPXSv7HUGq4aBNuKAJjg7Ku8I
 goPQSW/uLYwP1PxWl1Vpq6FAcda4NJDG7Pfi939kYjkC6jlyJJRnFMv7r1Cy9MILKKyV
 oTyMne95DQOxrtjoJcxe+2xsaJhk96jUPjuWqvWWwGOWoprpY/siIqHrBqnPuLT6Z1VA
 rc/fNcT+2Wj3VTdlb4OQgHEhOtvC9VpA+zOfEghDLbpHc0xHaKd9g3T+NrKrA8yzDbro
 TjgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=82NB9lCPMwXynDeXK6u4yXJsBZGIDVjhoL3cA6mdRsQ=;
 b=IYjdfKA55h8fMlbIGhMVtmpkUG9pVk65TsI5Ebi4e1yH3fzv1FxAiCO48LTknZa2Ji
 7qenvfCcuErb/w4mv4KNIC1kPmQlZp14jJToNw2d3EoFsgfjk8TTNG/UXc5B9HPAfaAK
 5lAF7GV3r0UVkCCyiLEzhIx6w9bxUTH42EBe8bdGSDB0a+T5Ish9wFC0NFW6YbI742/9
 DMIaStlLc4fVyVFgwOrHg6wfqtXQv7tV+7KsMCwUBwm+LosKqBjVi5ERl+hK60MzwVRp
 FLrFABfq+6x7FFupVMbdeMVST/BorpUiTf04cOn+2nHE8hHl5OFMiSuPk4B2LBVxbTvt
 +p/g==
X-Gm-Message-State: AOAM533ufsrtVseFydOebjmxpXUldKRZCiKYXSJiTH+at0Yk26eXOAxk
 ryI0Q1FeeVcPvjT4+aH2VLVzyw==
X-Google-Smtp-Source: ABdhPJwJxYGvMR1o+/BSgiQ889SGEkiIRZp44iAixVFd5RbTS+e+kjD7BYVeV/PDAFwFmuWjgHrBPw==
X-Received: by 2002:a17:902:7002:: with SMTP id
 y2mr2053163plk.94.1590648070946; 
 Wed, 27 May 2020 23:41:10 -0700 (PDT)
Received: from hsinchu02.internal.sifive.com
 (114-34-229-221.HINET-IP.hinet.net. [114.34.229.221])
 by smtp.gmail.com with ESMTPSA id q29sm3773366pfg.79.2020.05.27.23.41.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 May 2020 23:41:10 -0700 (PDT)
From: Greentime Hu <greentime.hu@sifive.com>
To: greentime.hu@sifive.com, guoren@linux.alibaba.com, vincent.chen@sifive.com,
 paul.walmsley@sifive.com, palmerdabbelt@google.com,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
 oleg@redhat.com
Subject: [RFC PATCH v5 02/13] riscv: Separate patch for cflags and aflags
Date: Thu, 28 May 2020 14:40:50 +0800
Message-Id: <c4e9f2ffc5b60c208e7c35d250dbc0f0cfde8bac.1590646208.git.greentime.hu@sifive.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1590646208.git.greentime.hu@sifive.com>
References: <cover.1590646208.git.greentime.hu@sifive.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_234111_772055_63CE313B 
X-CRM114-Status: UNSURE (   6.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

From: Guo Ren <guoren@linux.alibaba.com>

From: Guo Ren <ren_guo@c-sky.com>

Use "subst fd" in Makefile is a hack way and it's not convenient
to add new ISA feature. Just separate them into riscv-march-cflags
and riscv-march-aflags.

Signed-off-by: Guo Ren <guoren@linux.alibaba.com>
---
 arch/riscv/Makefile | 18 ++++++++++++------
 1 file changed, 12 insertions(+), 6 deletions(-)

diff --git a/arch/riscv/Makefile b/arch/riscv/Makefile
index fb6e37db836d..957d064bead0 100644
--- a/arch/riscv/Makefile
+++ b/arch/riscv/Makefile
@@ -37,12 +37,18 @@ else
 endif
 
 # ISA string setting
-riscv-march-$(CONFIG_ARCH_RV32I)	:= rv32ima
-riscv-march-$(CONFIG_ARCH_RV64I)	:= rv64ima
-riscv-march-$(CONFIG_FPU)		:= $(riscv-march-y)fd
-riscv-march-$(CONFIG_RISCV_ISA_C)	:= $(riscv-march-y)c
-KBUILD_CFLAGS += -march=$(subst fd,,$(riscv-march-y))
-KBUILD_AFLAGS += -march=$(riscv-march-y)
+riscv-march-cflags-$(CONFIG_ARCH_RV32I)		:= rv32ima
+riscv-march-cflags-$(CONFIG_ARCH_RV64I)		:= rv64ima
+riscv-march-$(CONFIG_FPU)			:= $(riscv-march-y)fd
+riscv-march-cflags-$(CONFIG_RISCV_ISA_C)	:= $(riscv-march-cflags-y)c
+
+riscv-march-aflags-$(CONFIG_ARCH_RV32I)		:= rv32ima
+riscv-march-aflags-$(CONFIG_ARCH_RV64I)		:= rv64ima
+riscv-march-aflags-$(CONFIG_FPU)		:= $(riscv-march-aflags-y)fd
+riscv-march-aflags-$(CONFIG_RISCV_ISA_C)	:= $(riscv-march-aflags-y)c
+
+KBUILD_CFLAGS += -march=$(riscv-march-cflags-y)
+KBUILD_AFLAGS += -march=$(riscv-march-aflags-y)
 
 KBUILD_CFLAGS += -mno-save-restore
 KBUILD_CFLAGS += -DCONFIG_PAGE_OFFSET=$(CONFIG_PAGE_OFFSET)
-- 
2.26.2


