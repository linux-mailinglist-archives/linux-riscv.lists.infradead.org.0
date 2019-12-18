Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5E8D124392
	for <lists+linux-riscv@lfdr.de>; Wed, 18 Dec 2019 10:46:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	MIME-Version:Message-ID:In-Reply-To:Date:References:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=e8WeEOX86xa99BoNrQ9B2Du4gOsUH/gMEvyPBCHtlrA=; b=I7qEDWm78XjPu9WUNtQdssNWU
	UTJVfKe4tGIKNWAfFRiVl6AgARMEsP1ES+8yTNqX2XS1Iu1Hu3BY+0wzRob6yR6AP4R9FgCZoXWQs
	tRUexQBFuU/liFmw8TlkeR7SjOtVyUGJUYcOEpIwmoWbLS1WOlpyaQdZRJbQvJTEquPCh9zQTBgxQ
	uUeWIK9aNVA0XkcOMzi+QtnwaHlt5SG2YAWuqlgMt8K/gDHPeEKZv5P4xD1NyZ9dAct7r8rehLD75
	v0GpMv+EnNMvjMOoHRqnyEFZ7Hm/nj52tSp4dTajQFnbriml7jfs5Wbk4EuAApj8xRo/F8M03fA+l
	txJ2fph4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihVuG-0000Zp-H6; Wed, 18 Dec 2019 09:46:12 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihVuD-0000ZS-EJ
 for linux-riscv@lists.infradead.org; Wed, 18 Dec 2019 09:46:10 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 78232ADCB;
 Wed, 18 Dec 2019 09:46:07 +0000 (UTC)
From: Andreas Schwab <schwab@suse.de>
To: David Abdurachmanov <david.abdurachmanov@gmail.com>
Subject: Re: [PATCH] riscv: reject invalid syscalls below -1
References: <20191218084757.904971-1-david.abdurachmanov@sifive.com>
X-Yow: Here I am in the POSTERIOR OLFACTORY LOBULE but I don't see CARL SAGAN
 anywhere!!
Date: Wed, 18 Dec 2019 10:46:06 +0100
In-Reply-To: <20191218084757.904971-1-david.abdurachmanov@sifive.com> (David
 Abdurachmanov's message of "Wed, 18 Dec 2019 10:47:56 +0200")
Message-ID: <mvmo8w63r1d.fsf@suse.de>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.3 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_014609_627842_725075A3 
X-CRM114-Status: GOOD (  10.96  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Kees Cook <keescook@chromium.org>,
 David Abdurachmanov <david.abdurachmanov@sifive.com>,
 Anup Patel <Anup.Patel@wdc.com>, linux-kernel@vger.kernel.org,
 linux-riscv@lists.infradead.org, Vincent Chen <vincent.chen@sifive.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Thomas Gleixner <tglx@linutronix.de>, Bin Meng <bmeng.cn@gmail.com>,
 Valentin Schneider <valentin.schneider@arm.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Dez 18 2019, David Abdurachmanov wrote:

> diff --git a/arch/riscv/kernel/entry.S b/arch/riscv/kernel/entry.S
> index a1349ca64669..e163b7b64c86 100644
> --- a/arch/riscv/kernel/entry.S
> +++ b/arch/riscv/kernel/entry.S
> @@ -246,6 +246,7 @@ check_syscall_nr:
>  	 */
>  	li t1, -1
>  	beq a7, t1, ret_from_syscall_rejected
> +	blt a7, t1, 1f

How about using bgeu instead in the preceding check?

	/*
	 * Syscall number held in a7.
	 * If syscall number is above allowed value, redirect to ni_syscall.
	 */
	bge a7, t0, 1f

Andreas.

-- 
Andreas Schwab, SUSE Labs, schwab@suse.de
GPG Key fingerprint = 0196 BAD8 1CE9 1970 F4BE  1748 E4D4 88E3 0EEA B9D7
"And now for something completely different."

