Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D94B1CEF8B
	for <lists+linux-riscv@lfdr.de>; Tue, 12 May 2020 10:54:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	MIME-Version:Message-ID:In-Reply-To:Date:References:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BlYORN9A/D1tLWU8DYJeMfxSqeQC/0CHapbgqNitItg=; b=GUnXENQxdeybi5FzarnFymhIi
	WYDXErcBTrKxPK0LdsHP5qJxB95y/U3BgltmaGCR5OBAHRXZ23NtkL8vK8e430xxh3aYyQfkmOBY3
	XWJ7X/S6+qMWYCyuqp6oI3x2YXyuy8BPxylh3LghCoYdx7vOtI53UV906yzAi/AOqxK2+rRA4VoWR
	Yy2q0GW1d1pGgtJnH1/sUmK5/Fz194e7e3/guT2Ttd9OLMTkOizfMj1CHr71sXpFE6jngus5vTH2i
	iGoEIMmK1lamN+zTAiZKEVwgtlQKwd90tqn5y6kiwRc+0KM7FIK55DiGwE6/XTn+lmZdDCvzN+unc
	0Q2SKS1pA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYQfl-0003Io-FH; Tue, 12 May 2020 08:53:57 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYQfh-0003HZ-Ie
 for linux-riscv@lists.infradead.org; Tue, 12 May 2020 08:53:55 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 05E73ABC7;
 Tue, 12 May 2020 08:53:52 +0000 (UTC)
From: Andreas Schwab <schwab@suse.de>
To: Linus Torvalds <torvalds@linux-foundation.org>
Subject: Re: [GIT PULL] RISC-V Fixes for 5.7-rc5
References: <mhng-81c83c19-6f5d-4ed1-a0bb-26accf4b7d3a@palmerdabbelt-glaptop1>
 <CAHk-=win0EVU_GuO=GuJu3Ck0WG1B3+ub-CjncM3B1G9x5d9cw@mail.gmail.com>
 <mvmr1vqkhxb.fsf@suse.de>
 <CAHk-=wj8Cks7L2H9ToNWEMmqECYEfX0uyCXpW1OsZ+NAooi2Cw@mail.gmail.com>
X-Yow: Two LITTLE black dots and one BIG black dot...nice 'n' FLUFFY!!
Date: Tue, 12 May 2020 10:53:49 +0200
In-Reply-To: <CAHk-=wj8Cks7L2H9ToNWEMmqECYEfX0uyCXpW1OsZ+NAooi2Cw@mail.gmail.com>
 (Linus Torvalds's message of "Mon, 11 May 2020 12:04:09 -0700")
Message-ID: <mvmftc5jzz6.fsf@suse.de>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.0.91 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_015353_765551_27C2A3AD 
X-CRM114-Status: GOOD (  10.39  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-riscv@lists.infradead.org, Palmer Dabbelt <palmer@dabbelt.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mai 11 2020, Linus Torvalds wrote:

> Why is glibc doing it in the first place? Is it some historical thing
> that is simply irrelevant on RISC-V simply because RISC-V doesn't have
> that kind of history, perhaps?

It is completely generic.  Even new architectures become old over time
and accumulate cruft.  The idea is that if you configure glibc with
--enable-kernel=VERSION, it assumes that all syscalls from kernel
VERSION are guaranteed to exist, and drops the fallbacks for those
syscalls, or uses them in the first place (if no useful fallback
existed).  From time to time the absolute minimum supported kernel
version is increased (this happend the last time in 2017, when x86 and
x86_64 moved the mininum from 2.6.32 to 3.2, after all other
architectures did that step in 2016), which allows removing the fallback
code that becomes obsolete.

Andreas.

-- 
Andreas Schwab, SUSE Labs, schwab@suse.de
GPG Key fingerprint = 0196 BAD8 1CE9 1970 F4BE  1748 E4D4 88E3 0EEA B9D7
"And now for something completely different."

