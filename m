Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFE0CBAC3B
	for <lists+linux-riscv@lfdr.de>; Mon, 23 Sep 2019 02:45:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=VDQg/aZZrhX1GTmmwpqicLb2bMzz+7UquBl3XO8W7LM=; b=FDbztTzY+H3XzuzlLdbQ8tiaMr
	C9FVrmykbW3K4dVGdND2gGboCitwUqZoGuACnMqTtWHSFDmF/HiaRz8Qp+AojWrWOvnR7iRcxOhrr
	51bH4YuE2gBrKpx+mCcvWR5iPg+dxvuFZ/Jkz+Rr51fmBMBoiexTUlxmoT6TcKFtBJ/IH6Z86Z2Qz
	lp6wTorD1k0ZTCXoTVfW7iYXuZsYzMDBI7uIzgKu8BkSu8xCCdfkGLfm+maYs7KXYff9NQ0zJnvUQ
	esPoXeeLXOHO09PS/M43kU2ITIES8taeqmGlXLnptq2bIrbV0e6z0OeXiBnn+siGlyRnro826NxT/
	Ne3zfiZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCCU6-00038O-DR; Mon, 23 Sep 2019 00:45:46 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCCU0-00034E-Nu
 for linux-riscv@lists.infradead.org; Mon, 23 Sep 2019 00:45:42 +0000
Received: by mail-pf1-x443.google.com with SMTP id q10so8063505pfl.0
 for <linux-riscv@lists.infradead.org>; Sun, 22 Sep 2019 17:45:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=etFOng1NSMlGr92KlrcTFVrPRQRxbWjcN6/2wjvKnb8=;
 b=fO39l9GWblA4imhZOOmvXoFwH2V9A46JomP+wWxqplazbuPQxOAopvpwuMhDz6+x//
 EZ9rQ7jQojULwJl45Z2YA4CLQBGA2Jn5knfHZ7Pv5jo+e2v2yqE5fpO7/po15yIHZdCe
 xVSpfdNL9/no1QTzYtU6kdrZdi/+LCclix77edyqL21dMfqYMzz0rb7U97Xe+ABc8oYp
 QezHxT/VqeF0XVKX/v0ibo+OZvYy73cTFqwx4nSPIZryN5qI2C4KsTdV8bSHwKyxLMAJ
 S+f7Lh5dyiSl7RUB5rvKJwyaLNAZV8lddPDa/LksDBbMylUeVdBhOWw7CypoQVvDwrSy
 o8EQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=etFOng1NSMlGr92KlrcTFVrPRQRxbWjcN6/2wjvKnb8=;
 b=I+Xan9JAN1Tz+krbecbTi7w1dGQr4r4UzTWhN9+jiF7eWrf3Mrdu7rkzNlOoRF/cbM
 lYcBp400TgSsqkQTjTpkkvO1e/3g4tMlH+5brAryQ3LRXM9rxW6sTzhSEyWYtxKpjNrK
 DRV9sPQNcr4E5x5VKy29QznJHhjcotEquu6JSSqRNSegcLeVPj2aA+4R4ICY5Ld/B48X
 5o1jnKJ7I1+rqEiAOhXS3hA49Neb5SoX6YObwhFrAM4TrwIYsQ2aEDPyMMjBBqVUrXDS
 2SaN7EqwIc+02lBC84Y7lNue9BRNsJM/HP00jYhiie/50XDtyh9ZG8vsI0DRrGj+0OkQ
 mBPQ==
X-Gm-Message-State: APjAAAV2KhmIZFqGuDyaaqEp0qmbrbsGrO+PeonEP/T1hOzpH2LiIEFW
 6tJFTzjN4dPXfhLBXqmpHsPkFzFCyzE=
X-Google-Smtp-Source: APXvYqyxP0lWJyTG/EzXGCE+z0Ba/ovVgEyGLWvJbKiSiuNzBkE6CXeRmeSRUIIaJY5Qr03rNmPIog==
X-Received: by 2002:a62:8702:: with SMTP id i2mr30820956pfe.187.1569199540103; 
 Sun, 22 Sep 2019 17:45:40 -0700 (PDT)
Received: from localhost.localdomain (220-132-236-182.HINET-IP.hinet.net.
 [220.132.236.182])
 by smtp.gmail.com with ESMTPSA id l7sm9139392pjy.12.2019.09.22.17.45.38
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sun, 22 Sep 2019 17:45:39 -0700 (PDT)
From: Vincent Chen <vincent.chen@sifive.com>
To: linux-riscv@lists.infradead.org
Subject: [PATCH 3/4] riscv: Correct the handling of unexpected ebreak in
 do_trap_break()
Date: Mon, 23 Sep 2019 08:45:16 +0800
Message-Id: <1569199517-5884-4-git-send-email-vincent.chen@sifive.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1569199517-5884-1-git-send-email-vincent.chen@sifive.com>
References: <1569199517-5884-1-git-send-email-vincent.chen@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190922_174540_811433_4C647ABE 
X-CRM114-Status: GOOD (  10.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: vincent.chen@sifive.com, palmer@sifive.com, linux-kernel@vger.kernel.org,
 aou@eecs.berkeley.edu, paul.walmsley@sifive.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

For the kernel space, all ebreak instructions are determined at compile
time because the kernel space debugging module is currently unsupported.
Hence, it should be treated as a bug if an ebreak instruction which does
not belong to BUG_TRAP_TYPE_WARN or BUG_TRAP_TYPE_BUG is executed in
kernel space. For the userspace, debugging module or user problem may
intentionally insert an ebreak instruction to trigger a SIGTRAP signal.
To approach the above two situations, the do_trap_break() will direct
the BUG_TRAP_TYPE_NONE ebreak exception issued in kernel space to die()
and will send a SIGTRAP to the trapped process only when the ebreak is
in userspace.

Signed-off-by: Vincent Chen <vincent.chen@sifive.com>
---
 arch/riscv/kernel/traps.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/arch/riscv/kernel/traps.c b/arch/riscv/kernel/traps.c
index 82f42a55451e..dd13bc90aeb6 100644
--- a/arch/riscv/kernel/traps.c
+++ b/arch/riscv/kernel/traps.c
@@ -130,8 +130,6 @@ asmlinkage void do_trap_break(struct pt_regs *regs)
 		type = report_bug(regs->sepc, regs);
 		switch (type) {
 #ifdef CONFIG_GENERIC_BUG
-		case BUG_TRAP_TYPE_NONE:
-			break;
 		case BUG_TRAP_TYPE_WARN:
 			regs->sepc += get_break_insn_length(regs->sepc);
 			return;
@@ -140,8 +138,9 @@ asmlinkage void do_trap_break(struct pt_regs *regs)
 		default:
 			die(regs, "Kernel BUG");
 		}
-	}
-	force_sig_fault(SIGTRAP, TRAP_BRKPT, (void __user *)(regs->sepc));
+	} else
+		force_sig_fault(SIGTRAP, TRAP_BRKPT,
+				(void __user *)(regs->sepc));
 }
 
 #ifdef CONFIG_GENERIC_BUG
-- 
2.7.4


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
