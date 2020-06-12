Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CA6C1F7467
	for <lists+linux-riscv@lfdr.de>; Fri, 12 Jun 2020 09:10:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qon66DpP/9C+tl7pgvKjepLx67Alsh8Vu/kEKeYzw5s=; b=KVhUt003FGzcyT
	G5DT7PAEcQ0Rc9nm1+mmFytNnHYTi+yjhBfrrqXN2mY2eeIFPZjwcM+q++sbWwbBIGhT6yjzwTW7n
	3pPNBILBhk10CmRGxFL89ibBK3f8naaR68yrTGkoiZ6UyhjfomC+b+gLkS0Mu+fgdYaLvw82s4cWz
	z6AGW6sHmHo9ZBpD+XxwTCGOwi5i0I2LTOHReDfGK5H13wABLNYPu5uEnlr4rSPe2oCLLD+g9tTye
	+kS4ycZrdjN/IZ8UZtgS5da95Xxer2p1RQ1s73go54EH86nIRFLUgr5NFKOzzjMGWS/eBRHbn4Rvm
	oqCSSslfypo+X6iJv56Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjdpg-0005Go-H3; Fri, 12 Jun 2020 07:10:32 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjdpU-00054f-2V
 for linux-riscv@lists.infradead.org; Fri, 12 Jun 2020 07:10:21 +0000
Received: by mail-pl1-x642.google.com with SMTP id y17so3382865plb.8
 for <linux-riscv@lists.infradead.org>; Fri, 12 Jun 2020 00:10:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Qon66DpP/9C+tl7pgvKjepLx67Alsh8Vu/kEKeYzw5s=;
 b=doTShxH7Y/dsPbNJ+cLPM0V+vYloqDfRvNPzA9RkizxyoybW7ndmznNSSY+wG1kDqm
 Ng+Eel87SwVZG83rOIZadRsSt3gxAR7jpYOX2FZ+aSDonbP5BgLDL9Pv325SEpwng3zr
 w+fgz2zljiaSQJmyjD/FhBu/apLQfKrqkwC4woE4TkgM4xjLq/JnzouAN3b30HOUFFUq
 +OMlTPdI6Dd6ZD9Ai/V7Lk7hnrJ/taVd8hS3a4cJ3DTtV/4eTt8VuXGsKw90DlX7CIdA
 DDYzPhr/m3TDfkbCMK1PRnMVDq436bX1UGTNY4/lsHiPOywNL9Z2r7AkZSQTb0np1pfc
 QLjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Qon66DpP/9C+tl7pgvKjepLx67Alsh8Vu/kEKeYzw5s=;
 b=N9TkRuNEl1VzGLU+8WDv/CngRFfyTa8kg5FYiqnFwgSiO78dkIoDYJtslzBM7H3/ov
 sTsssKyRoTxMuyYcsGQxqxFCytg5az6WgtgzzFG00rVHuSH7W2Nt1s7KnJyGaboXlolQ
 fo+GMTFvGYtR6ThAxJCaIWQhg3S4tjgQ4ts3vN1QCntc3wXRc7MPRH6DKX/puFjDxZo1
 SNvWB1wzbsJ3nE2JXVBdW04e/zLBKbRVoGGo2GqByp8dtmQVIFpezflXmRBWLLfD3qdu
 uiAnKNBGTLpMRv77UQ6BJ+iT8LkAHwgZ6z4ilooPLFKm0jiGe65bDl4A/k6XqxNB2dkX
 Ahcg==
X-Gm-Message-State: AOAM532BbM86KGsVxoDpm1xnQxzSnx32n8LL7AlgEs0a7wWFIRzavP5/
 OzVQJAbqXhkiIuaB0LVqHmT5bw==
X-Google-Smtp-Source: ABdhPJxdL3oZhAFHxU1Uft6EO9Gm7i++9n8ABoOq3s6toXlmfYm7sY3HquRLodQM9zQo9yUiedVebQ==
X-Received: by 2002:a17:90b:882:: with SMTP id
 bj2mr12458129pjb.122.1591945819238; 
 Fri, 12 Jun 2020 00:10:19 -0700 (PDT)
Received: from hsinchu02.internal.sifive.com
 (114-34-229-221.HINET-IP.hinet.net. [114.34.229.221])
 by smtp.gmail.com with ESMTPSA id d2sm4336919pgp.56.2020.06.12.00.10.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Jun 2020 00:10:18 -0700 (PDT)
From: Greentime Hu <greentime.hu@sifive.com>
To: greentime.hu@sifive.com, oleg@redhat.com, guoren@linux.alibaba.com,
 vincent.chen@sifive.com, paul.walmsley@sifive.com,
 palmerdabbelt@google.com, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 04/13] riscv: Extending cpufeature.c to detect V-extension
Date: Fri, 12 Jun 2020 15:09:53 +0800
Message-Id: <a5568f4547da37b48852f4bce08a646fb9aef903.1591344965.git.greentime.hu@sifive.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <cover.1591344965.git.greentime.hu@sifive.com>
References: <cover.1591344965.git.greentime.hu@sifive.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_001020_137633_C48CBC91 
X-CRM114-Status: UNSURE (   8.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
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
Cc: Anup Patel <anup@brainfault.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

From: Guo Ren <guoren@linux.alibaba.com>

From: Guo Ren <ren_guo@c-sky.com>

Current cpufeature.c doesn't support detecting V-extension, because
"rv64" also contain a 'v' letter and we need to skip it.

Signed-off-by: Guo Ren <guoren@linux.alibaba.com>
Reviewed-by: Anup Patel <anup@brainfault.org>
---
 arch/riscv/include/uapi/asm/hwcap.h | 1 +
 arch/riscv/kernel/cpufeature.c      | 4 +++-
 2 files changed, 4 insertions(+), 1 deletion(-)

diff --git a/arch/riscv/include/uapi/asm/hwcap.h b/arch/riscv/include/uapi/asm/hwcap.h
index dee98ee28318..a913e9a38819 100644
--- a/arch/riscv/include/uapi/asm/hwcap.h
+++ b/arch/riscv/include/uapi/asm/hwcap.h
@@ -21,5 +21,6 @@
 #define COMPAT_HWCAP_ISA_F	(1 << ('F' - 'A'))
 #define COMPAT_HWCAP_ISA_D	(1 << ('D' - 'A'))
 #define COMPAT_HWCAP_ISA_C	(1 << ('C' - 'A'))
+#define COMPAT_HWCAP_ISA_V	(1 << ('V' - 'A'))
 
 #endif /* _UAPI_ASM_RISCV_HWCAP_H */
diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
index a5ad00043104..c8527d770c98 100644
--- a/arch/riscv/kernel/cpufeature.c
+++ b/arch/riscv/kernel/cpufeature.c
@@ -30,6 +30,7 @@ void riscv_fill_hwcap(void)
 	isa2hwcap['f'] = isa2hwcap['F'] = COMPAT_HWCAP_ISA_F;
 	isa2hwcap['d'] = isa2hwcap['D'] = COMPAT_HWCAP_ISA_D;
 	isa2hwcap['c'] = isa2hwcap['C'] = COMPAT_HWCAP_ISA_C;
+	isa2hwcap['v'] = isa2hwcap['V'] = COMPAT_HWCAP_ISA_V;
 
 	elf_hwcap = 0;
 
@@ -44,7 +45,8 @@ void riscv_fill_hwcap(void)
 			continue;
 		}
 
-		for (i = 0; i < strlen(isa); ++i)
+		/* Skip rv64/rv32 to support v/V:vector */
+		for (i = 4; i < strlen(isa); ++i)
 			this_hwcap |= isa2hwcap[(unsigned char)(isa[i])];
 
 		/*
-- 
2.27.0


