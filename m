Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7C85DB1B8
	for <lists+linux-riscv@lfdr.de>; Thu, 17 Oct 2019 18:00:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2VROjwN+8J0P/GTjuRkYU5YDCFM/a3IIPgl/pN8urcU=; b=dyJ/KRjTivo6zi
	YtcrYF5j5THk/9YxNKbK3iUuhXJNbiMEE77RoVEcZSuRsiu8AdNo2G8QnuA1xux/AXMkVrusqvvvl
	03LwNVeRCwO/lzEuWJGcXV/VAZ72lrIz8JXMY972A0XvwNAdnDecUv+Zg+4fmezK7H1IOU+3CdkQ6
	0knREWoh8gwUNTkgjnCZ1hnFsq6v6SRhANfk95VZQtyveA30ZZWea9s+P5otjNHF4yiB+nS9sDg/7
	K9W7cs2U7ez8ep9Pg4xP10xEL0Wm/Ax810vwlgcAEZ/6TGJcyFFYjZ0I0DtmMREzjjBdqVOiGALC6
	2dmuByDSUL0kCDbcXxpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL8CZ-0005qC-4k; Thu, 17 Oct 2019 16:00:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL8CU-0005or-U7
 for linux-riscv@lists.infradead.org; Thu, 17 Oct 2019 16:00:32 +0000
Received: from sol.localdomain (c-24-5-143-220.hsd1.ca.comcast.net
 [24.5.143.220])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D29D521835;
 Thu, 17 Oct 2019 16:00:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571328030;
 bh=MJNtM0gGXpObzCT2JelP1fq2yMAZ27mOcUIIpChX9qY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=bPI16PNPk8Rfcbn3KXIe6pk14cZKallPkfJI/6Wj+wbb1o1Dj5QouFruB4yslOdVd
 JNLwbbPX4hkwgQYi0KCZNgI7jR+Tymds3yHFyHwKm1/a8Ux2CndwxhuEcDyL5Mj4K9
 bRarDWPQIkzz7EIfrgXF76q9tVdEb4YT17uVSbgc=
Date: Thu, 17 Oct 2019 09:00:28 -0700
From: Eric Biggers <ebiggers@kernel.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Subject: Re: WARNING: refcount bug in find_key_to_update
Message-ID: <20191017160028.GA726@sol.localdomain>
Mail-Followup-To: Linus Torvalds <torvalds@linux-foundation.org>,
 syzbot <syzbot+6455648abc28dbdd1e7f@syzkaller.appspotmail.com>,
 aou@eecs.berkeley.edu, David Howells <dhowells@redhat.com>,
 Jarkko Sakkinen <jarkko.sakkinen@linux.intel.com>,
 James Morris James Morris <jmorris@namei.org>,
 keyrings@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-riscv@lists.infradead.org,
 LSM List <linux-security-module@vger.kernel.org>,
 Palmer Dabbelt <palmer@sifive.com>,
 "Serge E. Hallyn" <serge@hallyn.com>,
 syzkaller-bugs <syzkaller-bugs@googlegroups.com>
References: <000000000000830fe50595115344@google.com>
 <00000000000071e2fc05951229ad@google.com>
 <CAHk-=wjFozfjV34_qy3_Z155uz_Z7qFVfE8h=_9ceGU-SVk9hA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHk-=wjFozfjV34_qy3_Z155uz_Z7qFVfE8h=_9ceGU-SVk9hA@mail.gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_090031_008935_A87B7A3F 
X-CRM114-Status: GOOD (  15.04  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: aou@eecs.berkeley.edu,
 syzbot <syzbot+6455648abc28dbdd1e7f@syzkaller.appspotmail.com>,
 Palmer Dabbelt <palmer@sifive.com>,
 syzkaller-bugs <syzkaller-bugs@googlegroups.com>,
 James Morris James Morris <jmorris@namei.org>,
 Jarkko Sakkinen <jarkko.sakkinen@linux.intel.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 David Howells <dhowells@redhat.com>,
 LSM List <linux-security-module@vger.kernel.org>, keyrings@vger.kernel.org,
 linux-riscv@lists.infradead.org, "Serge E. Hallyn" <serge@hallyn.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, Oct 17, 2019 at 08:53:06AM -0700, Linus Torvalds wrote:
> On Wed, Oct 16, 2019 at 7:42 PM syzbot
> <syzbot+6455648abc28dbdd1e7f@syzkaller.appspotmail.com> wrote:
> >
> > syzbot has bisected this bug to 0570bc8b7c9b ("Merge tag
> >  'riscv/for-v5.3-rc1' ...")
> 
> Yeah, that looks unlikely. The only non-riscv changes are from
> documentation updates and moving a config variable around.
> 
> Looks like the crash is quite unlikely, and only happens in one out of
> ten runs for the ones it has happened to.
> 
> The backtrace looks simple enough, though:
> 
>   RIP: 0010:refcount_inc_checked+0x2b/0x30 lib/refcount.c:156
>    __key_get include/linux/key.h:281 [inline]
>    find_key_to_update+0x67/0x80 security/keys/keyring.c:1127
>    key_create_or_update+0x4e5/0xb20 security/keys/key.c:905
>    __do_sys_add_key security/keys/keyctl.c:132 [inline]
>    __se_sys_add_key security/keys/keyctl.c:72 [inline]
>    __x64_sys_add_key+0x219/0x3f0 security/keys/keyctl.c:72
>    do_syscall_64+0xd0/0x540 arch/x86/entry/common.c:296
>    entry_SYSCALL_64_after_hwframe+0x49/0xbe
> 
> which to me implies that there's some locking bug, and somebody
> released the key without holding a lock.
> 
> That code looks a bit confused to me. Releasing a key without holding
> a lock looks permitted, but if that's the case then __key_get() is
> complete garbage. It would need to use 'refcount_inc_not_zero()' and
> failure would require failing the caller.
> 
> But I haven't followed the key locking rules, so who knows. That "put
> without lock" scenario would explain the crash, though.
> 
> David?
> 

Yes this is a bogus bisection.

The key is supposed to have refcount >= 1 since it's in a keyring.
So some bug is causing it to have refcount 0.  Perhaps some place calling
key_put() too many times.

Unfortunately I can't get the reproducer to work locally.

Note that there are 2 other syzbot reports that look related.
No reproducers for them, though:

Title:              KASAN: use-after-free Read in key_put
Last occurred:      1 day ago
Reported:           28 days ago
Branches:           Mainline
Dashboard link:     https://syzkaller.appspot.com/bug?id=f13750b1124e01191250cf930086dcc40740fa30
Original thread:    https://lore.kernel.org/lkml/0000000000008c3e590592cf4b7f@google.com/T/#u

Title:              KASAN: use-after-free Read in keyring_compare_object
Last occurred:      49 days ago
Reported:           84 days ago
Branches:           Mainline
Dashboard link:     https://syzkaller.appspot.com/bug?id=529ab6a98286c2a97c445988a62760a58d4a1d4b
Original thread:    https://lore.kernel.org/lkml/000000000000038ef6058e6f3592@google.com/T/#u

- Eric

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
