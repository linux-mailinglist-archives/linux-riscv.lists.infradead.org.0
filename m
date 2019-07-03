Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F5885DE65
	for <lists+linux-riscv@lfdr.de>; Wed,  3 Jul 2019 09:08:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3uEQLEM6EgE0TSf5Xm14GlyiN3czVywkguiPI1ogHek=; b=UUBnwhrOtclrfe
	nMZNWColA0UzuLPzSvFdY8F51xftL1Xs6PRmBuji1MajS6sdiB72vg00BQEPlrSozQhx0VOShaMD5
	n9I+7vLkN3e2HGj8G06QEgyZ4KlozSxqScx/qz8yKBxru1zPtKzpv4IFmU8e3pBXniUVwacjoUdhP
	arU6vFo4hpCyzIFVJqbzRvhY0XH6+naGjJNv3wwy8/LuFdhfMfkewrprkLWDlUggFxt0PgJvbvTkO
	rmI57cox+uDeevIGlDtTxthkXBaLzzzQUNodq0nEktEXBfJWi86sY91LNrZ0n73AQ093c8ZdwH+0i
	IQzGHYcCetUXeJNe4z8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiZNU-0006M4-0e; Wed, 03 Jul 2019 07:08:28 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiZNP-0006LF-Mt
 for linux-riscv@lists.infradead.org; Wed, 03 Jul 2019 07:08:25 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 9D3A6B12A;
 Wed,  3 Jul 2019 07:08:17 +0000 (UTC)
From: Andreas Schwab <schwab@suse.de>
To: Alistair Francis <alistair.francis@wdc.com>
Subject: Re: [PATCH RESEND 0/2] RISC-V: Handle the siginfo_t offset problem
References: <20190703005202.7578-1-alistair.francis@wdc.com>
X-Yow: Disco oil bussing will create a throbbing naugahide pipeline running
 straight to the tropics from the rug producing regions
 and devalue the dollar!
Date: Wed, 03 Jul 2019 09:08:17 +0200
In-Reply-To: <20190703005202.7578-1-alistair.francis@wdc.com> (Alistair
 Francis's message of "Tue, 2 Jul 2019 17:52:00 -0700")
Message-ID: <mvmk1czh9y6.fsf@suse.de>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.2.90 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_000824_118230_7E75D814 
X-CRM114-Status: UNSURE (   7.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: alistair23@gmail.com, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org, arnd@arndb.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Jul 02 2019, Alistair Francis <alistair.francis@wdc.com> wrote:

> In the RISC-V 32-bit glibc port [1] the siginfo_t struct in the kernel
> doesn't line up with the struct in glibc. In glibc world the _sifields
> union is 8 byte alligned (although I can't figure out why)

Try ptype/o in gdb.

Andreas.

-- 
Andreas Schwab, SUSE Labs, schwab@suse.de
GPG Key fingerprint = 0196 BAD8 1CE9 1970 F4BE  1748 E4D4 88E3 0EEA B9D7
"And now for something completely different."

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
