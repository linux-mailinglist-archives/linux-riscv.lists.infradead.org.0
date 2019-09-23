Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A805BAC38
	for <lists+linux-riscv@lfdr.de>; Mon, 23 Sep 2019 02:45:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=uqFXIx3jRzrxEa6UIVjnb48NiCCtorU34Q3t7fGt7Cw=; b=Qzyc6bFHkvxGvhbubLmU/jSu2V
	WR/zeq5YqHe0noEcYHu/BQDPeEsMJmWRLnhqwObYUxtZEUlnCDj2pLMHFl10S0SJLa0QWhWSyvgJ3
	/hpa0bt55KJUx9ob05sx1WbhJ2LSSvPKKMRVEJTiheTBqRP6xnBGjfmBBRUH0eaop3WIpUBHV2Wv4
	XLOTqxieN+7kLO7P6A1/Xu95ypD4yhCn5E2c/V/sEfrqq3Y783aPiafuIWg/oqeLx0kxr+tBFzdyR
	hWVE7rRuhZBXztjgqGYA2jNHb5CePZQzqHo+ULEFdYdyzDiG8P7RiEMj63wTqF4Rp3cyksDsYwNqq
	v+oNElZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCCU3-000366-Hn; Mon, 23 Sep 2019 00:45:43 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCCTy-00031S-ID
 for linux-riscv@lists.infradead.org; Mon, 23 Sep 2019 00:45:39 +0000
Received: by mail-pl1-x643.google.com with SMTP id t10so5739190plr.8
 for <linux-riscv@lists.infradead.org>; Sun, 22 Sep 2019 17:45:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Chejk/4+FmCtrFrzQ3cdh4eTfnbOVSILTOMfH5BS3rg=;
 b=KscoU/skknCbbY8YZs5H+cAOddHExj4kT3l2GqX65Qs42T2g2BLJ54/9rRxImmw1UJ
 4T+vSMp30+jX7EQr7yLlnw1/JMWgD1jPDci+wH8ngsQUbX4sOABn5I6dcBkOO1Q2eVAm
 MM/HVsl6/x48oqbevT5I/loUiE1aaPKLNzNxdzPT+wjfs6/aFJl4CPxyN2uTncujwFEG
 RQhmbpjr/TruZWtqmbjS3M+ObiSvMNaBcUCcY1cUu2v5Kr9hJFHGVj4JOZD91LiZKs0Z
 3KBUDZghfRVtT/2ak7BUWOsBhPvJwTL74as+9gWJsXjF0GvvNKGQG1lWKJq006JrUP5m
 DLHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Chejk/4+FmCtrFrzQ3cdh4eTfnbOVSILTOMfH5BS3rg=;
 b=efLooCEM0adgbvylx8wIS1fX6A5J/Ok7xhbHyxiyCdXp5t2rRZhvUkdHP2KuEa7taR
 URhNLSu8de5QCBwXim+/fmrkuh6vqJTTUxAXHVY5dQIS1w6fXeVSo7q+q7/dbWE4Fj8k
 1kp7qJjipOP4XOG4R81QYDqgU5IqJCMvyNLxjs8UuHIYaEuJpQ3elbddh7/9LsULLxvl
 E9mIX+BSG5pRXCh/xCqeZbKBiV4FPR/y8r7x37QHU9VSvdrgtdPPL20g8sMonH02gXRn
 Pj8C04Lz3HJHQxTzoFM5OMQ3rlU39O6zqe9JyZL5x6Q4goDUBFa7F+g7XtmFWS26ECwC
 ztdA==
X-Gm-Message-State: APjAAAX/LN6BdX/roRj+73CohyStfRF0n27PmgmbSJwanxUZ1JwaFnfP
 TmY0h0qXGmjEw7IKQp2ybOmW06Fz+2g=
X-Google-Smtp-Source: APXvYqxTVhkh+52M6mkBzcoHkL548c6/8rX+BxMVIXbVMNx8toD/c9dkZqmokUYv/q5COofkwXP/Tg==
X-Received: by 2002:a17:902:7615:: with SMTP id
 k21mr28543207pll.116.1569199537599; 
 Sun, 22 Sep 2019 17:45:37 -0700 (PDT)
Received: from localhost.localdomain (220-132-236-182.HINET-IP.hinet.net.
 [220.132.236.182])
 by smtp.gmail.com with ESMTPSA id l7sm9139392pjy.12.2019.09.22.17.45.36
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sun, 22 Sep 2019 17:45:37 -0700 (PDT)
From: Vincent Chen <vincent.chen@sifive.com>
To: linux-riscv@lists.infradead.org
Subject: [PATCH 2/4] rsicv: avoid sending a SIGTRAP to a user thread trapped
 in WARN()
Date: Mon, 23 Sep 2019 08:45:15 +0800
Message-Id: <1569199517-5884-3-git-send-email-vincent.chen@sifive.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1569199517-5884-1-git-send-email-vincent.chen@sifive.com>
References: <1569199517-5884-1-git-send-email-vincent.chen@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190922_174538_633078_0EE2E590 
X-CRM114-Status: GOOD (  12.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
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

On RISC-V, when the kernel runs code on behalf of a user thread, and the
kernel executes a WARN() or WARN_ON(), the user thread will be sent
a bogus SIGTRAP.  Fix the RISC-V kernel code to not send a SIGTRAP when
a WARN()/WARN_ON() is executed.

Signed-off-by: Vincent Chen <vincent.chen@sifive.com>
---
 arch/riscv/kernel/traps.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/riscv/kernel/traps.c b/arch/riscv/kernel/traps.c
index 055a937aca70..82f42a55451e 100644
--- a/arch/riscv/kernel/traps.c
+++ b/arch/riscv/kernel/traps.c
@@ -134,7 +134,7 @@ asmlinkage void do_trap_break(struct pt_regs *regs)
 			break;
 		case BUG_TRAP_TYPE_WARN:
 			regs->sepc += get_break_insn_length(regs->sepc);
-			break;
+			return;
 		case BUG_TRAP_TYPE_BUG:
 #endif /* CONFIG_GENERIC_BUG */
 		default:
-- 
2.7.4


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
