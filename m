Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD0DBE0230
	for <lists+linux-riscv@lfdr.de>; Tue, 22 Oct 2019 12:36:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:Content-ID:MIME-Version
	:Subject:To:References:In-Reply-To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9CRRymWZYCKQuhLTaJkAMQuk0H3AxJqNI2ynpZYyGc8=; b=Uwaa3KqD8PaMPA
	kWjMuRDn5lsri2C8BlX7zvb8tvlhTTYyJuG+WGSvpgmKed3s4wwKAcLLMU7/dBta7x1AULBwZzFts
	uTIR0bBlf/RIIk9lD3wWgLbPIXZeQBXjLV0DjpZe0O02XzKVy+vPWLKWkhQwclIYPlFEhk3MC2i8C
	YEiYILMVVIW+vD6Jpdf2+kuP4gLwyHNXtX3JgaaR6wdQlFqzSXQoDx/AQti4Rqz27qUVOQR4Y4OEz
	vd+u0K2aRcU4nsmZc0XN5XXBBzwUOQTkC7Lej5n/19+hOpZknz7iOoCgaJDG3e0Vl/pQXLqdXDGW2
	lMjxIaOaagmIpWboAyVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMrW3-0001u0-Lg; Tue, 22 Oct 2019 10:35:51 +0000
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMrVz-0001tA-9z
 for linux-riscv@lists.infradead.org; Tue, 22 Oct 2019 10:35:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1571740544;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ULN5eSGY4MtkW08yCSqz0QqvTO9SX1bksmLq7XKOj9M=;
 b=azJ3Q7p1XNV5UDQEiC1Bs8pmqc1ZHXN2sjin3vP+z6G0iu1Tj3KhbEMPsjLanT15sjCL07
 0Y8XPk9F5WMSYLVfp2o0AlqlEQMSgzieHgW5Y9T24qUmzuRYG7btOQOKk3jLRgEkTdbtTu
 ciiPvyHDzKLTvh5NXY/uxE9dpTttBeo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-282-W9eko3ddNJq9PMAOLuqccg-1; Tue, 22 Oct 2019 06:35:41 -0400
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 75F501800D79;
 Tue, 22 Oct 2019 10:35:39 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-121-40.rdu2.redhat.com
 [10.10.121.40])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 9C7095DD61;
 Tue, 22 Oct 2019 10:35:34 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <CAHk-=wjFozfjV34_qy3_Z155uz_Z7qFVfE8h=_9ceGU-SVk9hA@mail.gmail.com>
References: <CAHk-=wjFozfjV34_qy3_Z155uz_Z7qFVfE8h=_9ceGU-SVk9hA@mail.gmail.com>
 <000000000000830fe50595115344@google.com>
 <00000000000071e2fc05951229ad@google.com>
To: Linus Torvalds <torvalds@linux-foundation.org>,
 Mimi Zohar <zohar@linux.ibm.com>
Subject: Re: WARNING: refcount bug in find_key_to_update
MIME-Version: 1.0
Content-ID: <11433.1571740533.1@warthog.procyon.org.uk>
Date: Tue, 22 Oct 2019 11:35:33 +0100
Message-ID: <11434.1571740533@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-MC-Unique: W9eko3ddNJq9PMAOLuqccg-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_033547_420924_20EE6DE1 
X-CRM114-Status: GOOD (  12.96  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.61 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

I'm wondering if this is actually a bug in the error handling in the encrypted
key type.  Looking in the syzbot console log, there's a lot of output from
there prior to the crash, of which the following is an excerpt:

[  248.516746][T27381] encrypted_key: key user:syz not found
[  248.524392][T27382] encrypted_key: key user:syz not found
[  248.616141][T27392] encrypted_key: key user:syz not found
[  248.618890][T27393] encrypted_key: key user:syz not found
[  248.690844][T27404] encrypted_key: key user:syz not found
[  248.739405][T27403] encrypted_key: key user:syz not found
[  248.804881][T27417] encrypted_key: key user:syz not found
[  248.828354][T27418] encrypted_key: keyword 'new' not allowed when called from .update method
[  248.925249][T27427] encrypted_key: keyword 'new' not allowed when called from .update method
[  248.928200][T27415] Bad refcount user syz
[  248.934043][T27428] encrypted_key: key user:syz not found
[  248.939502][T27429] encrypted_key: key user:syz not found
[  248.968744][T27434] encrypted_key: key user:syz not found
[  248.982201][T27415] ==================================================================
[  248.996072][T27415] BUG: KASAN: use-after-free in refcount_inc_not_zero_checked+0x81/0x200

Note that the "Bad refcount user syz" is a bit I patched in to print the type
and description of the key that incurred the error.

It's a tad difficult to say exactly what's going on since I've no idea what
the syzbot reproducer is actually doing.

#{"threaded":true,"collide":true,"repeat":true,"procs":6,"sandbox":"namespace","fault_call":-1,"tun":true,"netdev":true,"resetnet":true,"cgroups":true,"binfmt_misc":true,"close_fds":true,"tmpdir":true,"segv":true}
perf_event_open(&(0x7f000001d000)={0x1, 0x70, 0x0, 0x0, 0x0, 0x0, 0x0, 0x7f, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x7, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, @perf_config_ext}, 0x0, 0xffffffffffffffff, 0xffffffffffffffff, 0x0)
keyctl$instantiate(0xc, 0x0, &(0x7f0000000100)=ANY=[@ANYBLOB='new default user:syz 04096'], 0x1, 0x0)
r0 = add_key(&(0x7f0000000140)='encrypted\x00', &(0x7f0000000180)={'syz'}, &(0x7f0000000100), 0xca, 0xfffffffffffffffe)
add_key$user(&(0x7f0000000040)='user\x00', &(0x7f0000000000)={'syz'}, &(0x7f0000000440)='X', 0x1, 0xfffffffffffffffe)
keyctl$read(0xb, r0, &(0x7f0000000240)=""/112, 0x349b7f55)

However, it looks like the encrypted key type is trying to access a user key,
so maybe there's an overput there?  I'm trying to insert more debugging, but
the test doesn't always fail.

syzbot <syzbot+6455648abc28dbdd1e7f@syzkaller.appspotmail.com> wrote:

> HEAD commit:    bc88f85c kthread: make __kthread_queue_delayed_work static
> git tree:       upstream
> console output: https://syzkaller.appspot.com/x/log.txt?x=1730584b600000
> kernel config:  https://syzkaller.appspot.com/x/.config?x=e0ac4d9b35046343
> dashboard link: https://syzkaller.appspot.com/bug?extid=6455648abc28dbdd1e7f
> compiler:       gcc (GCC) 9.0.0 20181231 (experimental)
> syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=11c8adab600000

David


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
