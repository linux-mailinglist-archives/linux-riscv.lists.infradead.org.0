Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 389B82D72D
	for <lists+linux-riscv@lfdr.de>; Wed, 29 May 2019 10:00:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+h3etXQ06zYmZyWrgFjt/3blCeWX1ny70SR0HDm4e+w=; b=NM956NdZrfiSjE
	prPWB8/V+MjYEXaDq514xAVpT13hI2UF/NbAPbp8VVsw1VvQsrK5WLR7U8LzDYwSjKCrP6pI4VAkT
	9FgPyI9pyhAf553/1wP1SAP3h3jmALCnmKe1wZmBWFcxWwplvTsaG6RKG2rG83oWaLdqP3KV+rZYy
	0iH623dnqaX4FxWKFamWDqcNsZvSFTzUa79f3ScvLudCDwRfOHSMBC+fRFUSlWE4Pw9bP/Ss/35TS
	eQdBxHLMKEDZ7k+jlDDGq3TisM8+3bBKvX04xFjLq+spErihGBgaS5LU84ic+2DHmWrPuAvpno00q
	uHAC0PxbDhvqLAOf6yVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVtVr-0007gq-DI; Wed, 29 May 2019 08:00:43 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVtVo-0007g0-8C
 for linux-riscv@lists.infradead.org; Wed, 29 May 2019 08:00:41 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 22FE3AC23;
 Wed, 29 May 2019 08:00:36 +0000 (UTC)
From: Andreas Schwab <schwab@suse.de>
To: Palmer Dabbelt <palmer@sifive.com>
Subject: Re: [PATCH] RISC-V: defconfig: Enable NO_HZ_IDLE and HIGH_RES_TIMERS
References: <CAAhSdy3GqjS06QxCtY6OUkBZds4gygQsAkaoaa+sMj3z6qgUBQ@mail.gmail.com>
 <mhng-2b0ca072-2d6d-4422-96a2-2a4254255cc6@palmer-si-x1e>
X-Yow: Gee, I feel kind of LIGHT in the head now, knowing I can't make
 my satellite dish PAYMENTS!
Date: Wed, 29 May 2019 10:00:35 +0200
In-Reply-To: <mhng-2b0ca072-2d6d-4422-96a2-2a4254255cc6@palmer-si-x1e> (Palmer
 Dabbelt's message of "Tue, 28 May 2019 10:47:51 -0700 (PDT)")
Message-ID: <mvm8supd718.fsf@suse.de>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.2 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_010040_440076_BCACABCC 
X-CRM114-Status: UNSURE (   7.29  )
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
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: aou@eecs.berkeley.edu, anup@brainfault.org, Anup Patel <Anup.Patel@wdc.com>,
 linux-kernel@vger.kernel.org, Christoph Hellwig <hch@infradead.org>,
 Atish Patra <Atish.Patra@wdc.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mai 28 2019, Palmer Dabbelt <palmer@sifive.com> wrote:

> My only issue here is testing: IIRC last time we tried this it ended up causing
> trouble.

I've been running kernels with these settings since the beginning, and
never seen any trouble.

Andreas.

-- 
Andreas Schwab, SUSE Labs, schwab@suse.de
GPG Key fingerprint = 0196 BAD8 1CE9 1970 F4BE  1748 E4D4 88E3 0EEA B9D7
"And now for something completely different."

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
