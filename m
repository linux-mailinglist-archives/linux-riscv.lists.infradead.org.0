Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89F76DCBA9
	for <lists+linux-riscv@lfdr.de>; Fri, 18 Oct 2019 18:38:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:Content-ID:MIME-Version
	:Subject:To:References:In-Reply-To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rsxQhdiYFio4RXvs/kE8Y3ufNm2LSUtnkqCkRPHyZrw=; b=i26o8+bKe4X5O1
	bD+NK7bxgCIq+Yqvu71fSuUGb7PKvuBiDM3lHJ/ML1QCF3CCipokT5/D6qmVWb1Jtc/0kNdsRCb+5
	OX/A1wZHN+uNJV3+ECAv+eSqVHCP628d+5eEGBQEG7+iV35YUF5fuUQvWKyE2gyi7aRBTquXr9dlz
	IcwG4Z5OQ1fDK2njDgm4KzJ4I13Gn53VH+lDrW5F+G3yr2/mjtVEuQVENZ5AfoKjHLN+q40KpDyAc
	k40cJYP+OodNBlsv9k8ax5APfm4ru5sexHu+kqzzoekLFfyn0u3q1u6urNuelt69oRj5qQWFgnY8D
	5sgn/j0qVm1C/KPCp4ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLVGa-00041y-Sp; Fri, 18 Oct 2019 16:38:16 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLVGY-00041A-02
 for linux-riscv@lists.infradead.org; Fri, 18 Oct 2019 16:38:15 +0000
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 80F98307D98A;
 Fri, 18 Oct 2019 16:38:09 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-121-84.rdu2.redhat.com
 [10.10.121.84])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 4F90660600;
 Fri, 18 Oct 2019 16:38:06 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <CAHk-=wjFozfjV34_qy3_Z155uz_Z7qFVfE8h=_9ceGU-SVk9hA@mail.gmail.com>
References: <CAHk-=wjFozfjV34_qy3_Z155uz_Z7qFVfE8h=_9ceGU-SVk9hA@mail.gmail.com>
 <000000000000830fe50595115344@google.com>
 <00000000000071e2fc05951229ad@google.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Subject: Re: WARNING: refcount bug in find_key_to_update
MIME-Version: 1.0
Content-ID: <31179.1571416685.1@warthog.procyon.org.uk>
Date: Fri, 18 Oct 2019 17:38:05 +0100
Message-ID: <31180.1571416685@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.48]); Fri, 18 Oct 2019 16:38:13 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_093814_073255_4EA54872 
X-CRM114-Status: GOOD (  16.94  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: aou@eecs.berkeley.edu,
 syzbot <syzbot+6455648abc28dbdd1e7f@syzkaller.appspotmail.com>,
 Palmer Dabbelt <palmer@sifive.com>,
 syzkaller-bugs <syzkaller-bugs@googlegroups.com>,
 James Morris James Morris <jmorris@namei.org>,
 Jarkko Sakkinen <jarkko.sakkinen@linux.intel.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, dhowells@redhat.com,
 LSM List <linux-security-module@vger.kernel.org>, keyrings@vger.kernel.org,
 linux-riscv@lists.infradead.org, "Serge E. Hallyn" <serge@hallyn.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Linus Torvalds <torvalds@linux-foundation.org> wrote:

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

find_key_to_update() must be called with the keyring-to-be-searched locked, as
stated in the comment on that function.

If a key-to-be-updated can be found in that keyring, then the keyring must be
holding a ref on that key already, so it's refcount must be > 0, so it
shouldn't be necessary to use refcount_inc_not_zero().

There shouldn't be a race with key_link(), key_unlink(), key_move(),
keyring_clear() or keyring_gc() (garbage collection) as all of those take a
write-lock on the keyring.

> But I haven't followed the key locking rules, so who knows. That "put
> without lock" scenario would explain the crash, though.

That shouldn't explain it.  When key_put() reduces the refcount to 0, it just
schedules the garbage collector.  It doesn't touch the key again directly.

I would guess that something incorrectly put a ref when it shouldn't have.  Do
we know which type of key is involved?  Looking at the syzkaller reproducer,
it's adding an encrypted key and a user key to the process keyring -
presumably repeating the procedure within the same process, hence how it finds
something to update.

David

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
