Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37A8181F31
	for <lists+linux-riscv@lfdr.de>; Mon,  5 Aug 2019 16:34:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VvbbRcjkaT39TtF5kdr1sgMoPpPEZ/0WI1Th9MCFrcU=; b=kwAeezFybVS3Id
	FyzMPPPvo7Ib5i0DfL6HsYNvP1bhZbEwOpmpPVqFOv8W96pbYZTGw4kMnXbF3D0zVOsGNeyHt4cGD
	ru6Vt+X2gV6gwTjARKhEHnq8L21Jyj/kx21lxyg0al8DH/e6kfg3ZjiCARh+TzOps+D1FZdN6Y2js
	AT9wZ0wQDK7gkKJhPhe80Tt2MEl+6iESjSbFrJS6T9c3pwpGmSA5XatftRO50OJZItyCAJH34uK+a
	MRa+rR5aTEMbTYpyVxagCnF3NT+5AY28DgtPa+gUc2eSQWfqgcfbKlL5nkdx0N7CyxlxBqO/lY87A
	zEOV2T28PqCF9379fVpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hue4V-0005u7-Bt; Mon, 05 Aug 2019 14:34:47 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hue4R-0005tk-Qb; Mon, 05 Aug 2019 14:34:45 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 72631ABBE;
 Mon,  5 Aug 2019 14:34:42 +0000 (UTC)
From: Andreas Schwab <schwab@suse.de>
To: Anup Patel <anup@brainfault.org>
Subject: Re: Random memory corruption with v5.2
References: <mvm8sshcdwc.fsf@suse.de>
 <CAEn-LTpM-0TMxkNNh6nnLH9Bnr9Zm+VFLf=z1y9sER6RXrQooQ@mail.gmail.com>
 <mvm1ry8au3f.fsf@suse.de>
 <alpine.DEB.2.21.9999.1907301709510.4874@viisi.sifive.com>
 <mvmwofw68ji.fsf@suse.de>
 <CAAhSdy0ZPk1So_ieahn5dVaye1WajRmwkYHhSox4FcvuOuZchw@mail.gmail.com>
 <mvmmugn4sd4.fsf@suse.de>
X-Yow: Where does it go when you flush?
Date: Mon, 05 Aug 2019 16:34:41 +0200
In-Reply-To: <mvmmugn4sd4.fsf@suse.de> (Andreas Schwab's message of "Mon, 05
 Aug 2019 16:08:39 +0200")
Message-ID: <mvmimrb4r5q.fsf@suse.de>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.2.90 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_073444_012595_5EAB0024 
X-CRM114-Status: UNSURE (   6.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-riscv <linux-riscv@lists.infradead.org>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 OpenSBI <opensbi@lists.infradead.org>,
 David Abdurachmanov <david.abdurachmanov@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

But this does help:

--- a/arch/riscv/include/asm/tlbflush.h
+++ b/arch/riscv/include/asm/tlbflush.h
@@ -49,7 +49,7 @@ static inline void remote_sfence_vma(struct cpumask *cmask, unsigned long start,
 
 	cpumask_clear(&hmask);
 	riscv_cpuid_to_hartid_mask(cmask, &hmask);
-	sbi_remote_sfence_vma(hmask.bits, start, size);
+	sbi_remote_sfence_vma(hmask.bits, 0, -1);
 }
 
 #define flush_tlb_all() sbi_remote_sfence_vma(NULL, 0, -1)

Andreas.

-- 
Andreas Schwab, SUSE Labs, schwab@suse.de
GPG Key fingerprint = 0196 BAD8 1CE9 1970 F4BE  1748 E4D4 88E3 0EEA B9D7
"And now for something completely different."

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
