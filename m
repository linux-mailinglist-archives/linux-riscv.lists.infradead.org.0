Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA8DB8DEDD
	for <lists+linux-riscv@lfdr.de>; Wed, 14 Aug 2019 22:33:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aKtxvNBCaYXM5NUS/ZpIstAR9AF5LC2lP1aXznh/lrc=; b=imCDik43tlvX14
	rw9Lsns0WkDrRuvUgh05OAcYE2+QSxhyOQ6a9jpGLLflIjyyBBUFm8DjBne4H0c4HuYMALO/81890
	rkoJeCvS6MsnEid6n+KTPLbFZWXGC0yHsZJiX8z6D7L9InTQXG2QFz+ceaHF4cp/6YPX7a+h0blpK
	58JKvcYhatNQFdTUfv78hAM+jvqqDw8nSh/PDNbtmqPkzMRC4cYMGSNVYOxmyyDUA7FpDQwGZh2JI
	HRit0mg6O9n/UjbFpO3acKslJlo1gNHCjjqQmYyBKZx6D1FSjgstpZi4IbVHFtpI8zr9LsBYtMADd
	crAaYRcFGE9MPRnk54Qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxzx4-00062n-3u; Wed, 14 Aug 2019 20:32:58 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxzwz-00061z-Uh
 for linux-riscv@lists.infradead.org; Wed, 14 Aug 2019 20:32:55 +0000
Received: by mail-ot1-x343.google.com with SMTP id m24so1017278otp.12
 for <linux-riscv@lists.infradead.org>; Wed, 14 Aug 2019 13:32:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=RHKwFMVKNYQMd4/tP+2CUffs2l2JEgbMZRapdlVGZIY=;
 b=X8gnSbGM+nulr5SiQfFmuO8kXPv4djlLrxG+SvnL74ayuUiMcFyraCcB3zu9z9WVcD
 dLtEkzyJddzpCVaR98s8ld3acAVetijvZstNygcyJBdxp5/eJHhb+CSxCxdpjRPLmmwr
 lkJ19kDC/FwDT0H5YYfeS5NBV3aWJZv41DVhGpaqZAqPbcc9+jBetJ47bi+R2EdQ2E+2
 bhTl66ia4TiwQksnq1HQaS3wMMj2G7+wK1XcbvTM4ftyVViPEZFLSeJEuO0MTok2XuFJ
 SaVhE2AsBgWc5tr5XryVURfapEH2kC+4fJr4voK7h5x2cGjpHf9kHq8qpqh1kLEhvxKZ
 Y2VQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=RHKwFMVKNYQMd4/tP+2CUffs2l2JEgbMZRapdlVGZIY=;
 b=NGBO/0J65NFAWFSWOr9Tsh25BK6FZYaenmHwp2BfkuU40YYL1f0vCXiqd0a2AdPjdb
 PzUvEJTWMpNpkKOz3kVn2pHbiAHn4N6TywDjHo1sJB1Qx9pHVmcZo7+ehFixg4R5MD3+
 nbaF1kLhny/c0DL2uO3p1afCCPRHQ02OYnZ55302FqhFs/37gKUaTX1YbOIcH2PkrlRw
 Ag5ox7TCOIL+m93qz29NweqRKd9LF17Ypg7eLYsezs702qPMHvmssE8CWXXNm6CHAT3E
 M3xxdqX/eumgg9tOAOFmVGZKL8FjhP2jDf0oQ1ttL7SUuZIzZZXFt/ll8TV5vsi2Y1w6
 Neow==
X-Gm-Message-State: APjAAAWBXY1F1XAQQZuHBlyrnPpnZPN3I6tYtp9uviFrkckxezheabTZ
 TbOwg5vxopH1wBBcvJsHRXqwFN3Bdss=
X-Google-Smtp-Source: APXvYqwKfp7tkmyc33gvbJiRyfZ67DOF2YTIbJn9ktqULef9SjFw8W2PQ8JakgfdW6Ws3cQonPyqLg==
X-Received: by 2002:a6b:4101:: with SMTP id n1mr1928939ioa.138.1565814771712; 
 Wed, 14 Aug 2019 13:32:51 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
 by smtp.gmail.com with ESMTPSA id
 j16sm1106209iok.34.2019.08.14.13.32.50
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 14 Aug 2019 13:32:51 -0700 (PDT)
Date: Wed, 14 Aug 2019 13:32:50 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Vincent Chen <vincent.chen@sifive.com>
Subject: Re: [PATCH v2 2/2] riscv: Make __fstate_clean() work correctly.
In-Reply-To: <1565771033-1831-3-git-send-email-vincent.chen@sifive.com>
Message-ID: <alpine.DEB.2.21.9999.1908141328440.18249@viisi.sifive.com>
References: <1565771033-1831-1-git-send-email-vincent.chen@sifive.com>
 <1565771033-1831-3-git-send-email-vincent.chen@sifive.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_133254_000871_7E6A6383 
X-CRM114-Status: GOOD (  13.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-riscv@lists.infradead.org, Palmer Dabbelt <palmer@sifive.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, 14 Aug 2019, Vincent Chen wrote:

> Make the __fstate_clean() function correctly set the
> state of sstatus.FS in pt_regs to SR_FS_CLEAN.
> 
> Fixes: 7db91e5 ("RISC-V: Task implementation")
> Cc: linux-stable <stable@vger.kernel.org>
> Signed-off-by: Vincent Chen <vincent.chen@sifive.com>
> Reviewed-by: Anup Patel <anup@brainfault.org>
> Reviewed-by: Christoph Hellwig <hch@lst.de>

Thanks, I extended the "Fixes" commit ID to 12 digits, as is the usual 
practice here, and have queued the following for v5.3-rc.


- Paul

From: Vincent Chen <vincent.chen@sifive.com>
Date: Wed, 14 Aug 2019 16:23:53 +0800
Subject: [PATCH] riscv: Make __fstate_clean() work correctly.

Make the __fstate_clean() function correctly set the
state of sstatus.FS in pt_regs to SR_FS_CLEAN.

Fixes: 7db91e57a0acd ("RISC-V: Task implementation")
Cc: linux-stable <stable@vger.kernel.org>
Signed-off-by: Vincent Chen <vincent.chen@sifive.com>
Reviewed-by: Anup Patel <anup@brainfault.org>
Reviewed-by: Christoph Hellwig <hch@lst.de>
[paul.walmsley@sifive.com: expanded "Fixes" commit ID]
Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
---
 arch/riscv/include/asm/switch_to.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/riscv/include/asm/switch_to.h b/arch/riscv/include/asm/switch_to.h
index 949d9cd91dec..f0227bdce0f0 100644
--- a/arch/riscv/include/asm/switch_to.h
+++ b/arch/riscv/include/asm/switch_to.h
@@ -16,7 +16,7 @@ extern void __fstate_restore(struct task_struct *restore_from);
 
 static inline void __fstate_clean(struct pt_regs *regs)
 {
-	regs->sstatus |= (regs->sstatus & ~(SR_FS)) | SR_FS_CLEAN;
+	regs->sstatus = (regs->sstatus & ~SR_FS) | SR_FS_CLEAN;
 }
 
 static inline void fstate_off(struct task_struct *task,
-- 
2.23.0.rc1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
