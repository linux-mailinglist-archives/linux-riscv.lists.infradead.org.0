Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C17E949D96
	for <lists+linux-riscv@lfdr.de>; Tue, 18 Jun 2019 11:39:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=WPDfaBisyHLVY8YoHpq6YtnqWIhyp0gfBBJqyNPkSqg=; b=dMD
	ArB4YqxgU5NcTWE80oTQyyqi3i2e1fcl42HBJ9MVfcwXaj6AqrUxgfoxYnAPq4l9V7iyNzTH0gDLm
	XeB6zVlvrvU8crpxXHpxUWrZriYBT8U/nRS6llGctOZ0mwQsDD1k5jBp4nCgzsEzIq1apmR7qVgp5
	s3o0lEd31yef+JA7DhiwPEVO/Dfi3v/F8w+R7sbGFQ7y7eUmuTvJCvY/Xuopmx/w2z5Z8ZpMRZlXz
	RHSYuxNTqiQduAP8sXF+OpBrEnS4uHr6QRTo4BohqTXA+dQQ7peaaiS4U0foC/cNhle/OtUKT1Zu4
	SxrkGhfKJO+K1gteIo1q1NK6jtOWqDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdAaL-0007yi-VB; Tue, 18 Jun 2019 09:39:25 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdAaI-0007yA-QZ
 for linux-riscv@lists.infradead.org; Tue, 18 Jun 2019 09:39:24 +0000
Received: by mail-pg1-x543.google.com with SMTP id l19so7359334pgh.9
 for <linux-riscv@lists.infradead.org>; Tue, 18 Jun 2019 02:39:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=jqdMNndiQYaxMBqXvE2cNmA4cTmPzBHoG9XBdDeoHjA=;
 b=mf9nawFPirENdb0gAXGAsgluf4/dX+Z/WCzDrVqqzqiDAEogH9vcF9vIJQfzmg5eU5
 UcnMdWwO+uiqsFT89a0Hjn5WHeqFH8lFmf0goC+Hj5Fs/31d/k95TpNpJsvd0z7kV3sr
 Lqyg3RUVeLyfTzH3SSDOGNBMG9zI4Oufyv0aJLdmIMbz4glYrAb/h6a5mhDsHgI6jPh3
 hDuIu04qqDHCuF/Ov+5Chg+E+RGKR1wIoSOcOBQXosHZ1zUkjED2fs0SGHG54R3LBAW3
 wjUaVT8FAVwPrp3sULUTpBqYkK9/rfTUQcQQJ/oCS2qA9hZDEPUBWpcRph2CB+H1H9Y8
 iBiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=jqdMNndiQYaxMBqXvE2cNmA4cTmPzBHoG9XBdDeoHjA=;
 b=aaGaXIT9HRs2hxRRxA+tU+VhUrAmK1qKG97PTPv+qmiWvzxssNToglms3ff6p4b8/Q
 QwdV2soBIwmBv8azP5AlVCw86wX2puQqkmfDmmuZu4QAP3t6JZY0VoaX6JkGriAkmb+9
 Iz1NVL9IBfNjocjeW0C14NTS8Ks9o0XIbc4K1zmeDGPnxfTUxYyEX5QUjlMFGlEHlfzN
 S3uXh1RlypZ0uYI2MBHiLwtUdZVbnPzQ74YF4zEqrpuTqKNHoEBQpNJ8DwCzetSP2i4B
 aSydGsAMSJuuqDpSr6ZDnUupThDEUTG3SpEWRxZskUvAgryBPYx81Ueb66moYOLSrUPr
 NiQg==
X-Gm-Message-State: APjAAAVbD+5DurlTZLmi3+BqzBCHet/rCX6DQrhTlyyiMp2NnsjN1hFh
 mZGHiDAYN+h0kMtwkdTFRUoqsQ==
X-Google-Smtp-Source: APXvYqwTSqQLx5QdswDWi9aSZ8OKqd5oBJX4TpaQx9NKh3D9itrAWW7N2fnlMrKf/wHjICLh4fEb/Q==
X-Received: by 2002:aa7:9ad2:: with SMTP id x18mr39248807pfp.192.1560850762386; 
 Tue, 18 Jun 2019 02:39:22 -0700 (PDT)
Received: from localhost.localdomain (220-132-236-182.HINET-IP.hinet.net.
 [220.132.236.182])
 by smtp.gmail.com with ESMTPSA id h11sm15036975pfn.170.2019.06.18.02.39.20
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 18 Jun 2019 02:39:21 -0700 (PDT)
From: shihpo.hung@sifive.com
To: shihpo.hung@sifive.com
Subject: [PATCH] riscv: mm: Fix code comment
Date: Tue, 18 Jun 2019 17:39:15 +0800
Message-Id: <1560850755-3532-1-git-send-email-shihpo.hung@sifive.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_023922_860764_F0D585D2 
X-CRM114-Status: UNSURE (   7.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
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
 Albert Ou <aou@eecs.berkeley.edu>, Paul Walmsley <paul.walmsley@sifive.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

From: ShihPo Hung <shihpo.hung@sifive.com>

Fix the comment since vmalloc_fault doesn't reach
flush_tlb_fix_spurious_fault.

Signed-off-by: ShihPo Hung <shihpo.hung@sifive.com>
Cc: Palmer Dabbelt <palmer@sifive.com>
Cc: Albert Ou <aou@eecs.berkeley.edu>
Cc: Paul Walmsley <paul.walmsley@sifive.com>
Cc: linux-riscv@lists.infradead.org
---
 arch/riscv/mm/fault.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/arch/riscv/mm/fault.c b/arch/riscv/mm/fault.c
index 5b72e60..f53ffd7 100644
--- a/arch/riscv/mm/fault.c
+++ b/arch/riscv/mm/fault.c
@@ -285,9 +285,6 @@ asmlinkage void do_page_fault(struct pt_regs *regs)
 		 * entries, but in RISC-V, SFENCE.VMA specifies an
 		 * ordering constraint, not a cache flush; it is
 		 * necessary even after writing invalid entries.
-		 * Relying on flush_tlb_fix_spurious_fault would
-		 * suffice, but the extra traps reduce
-		 * performance. So, eagerly SFENCE.VMA.
 		 */
 		local_flush_tlb_page(addr);
 
-- 
2.7.4


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
