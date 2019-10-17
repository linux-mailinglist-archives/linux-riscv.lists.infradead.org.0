Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24A47DB194
	for <lists+linux-riscv@lfdr.de>; Thu, 17 Oct 2019 17:53:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yp+0dFkvxV6nYFuSMqsbOo2v5egeEgyxowTnOLb1dww=; b=rpc56W6Pz3Zv3O
	tAGzBPjIcv8lh3U0aa1L6oqt+KwYfRDTro8KHlzK1j2Sxk5oNyxNxHHdiq894OvjSlwn5+Nib7Dc5
	c4pVh6xIw67/1NrLv+L7hqQJKmnTf1kxCegE3m+gcID3vvodsIa24hj8mkLIALpO/0qLIuWYY19SZ
	Pe0Bvx1sVhh8zXvwDNvr8y6KiJHvWqxbBdJMyNOP96eOouMrwLVRZzwY0FTZHB1kM5ZK93EQA59hb
	xcrLgvcIVItQ0urD0h6/d7o51qP2VObmyThwL8gsKbbHaqo/Cn8y20+R3LlDkRdRN4lRmLsUoBWX4
	2rFgo+zh/0i2zMpGVwEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL85n-0002Tn-BY; Thu, 17 Oct 2019 15:53:35 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL85g-0002OS-Hc
 for linux-riscv@lists.infradead.org; Thu, 17 Oct 2019 15:53:29 +0000
Received: by mail-lj1-x242.google.com with SMTP id l21so3125759lje.4
 for <linux-riscv@lists.infradead.org>; Thu, 17 Oct 2019 08:53:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=cIzDy9DTfDNRhN7LSYB97ye4DVyGrDXll/MmImkgT6U=;
 b=BVpF6LyRGlHDFAruswmAHbv0+pLGUbDhV9wcN5xE8WS8g+zUh4x5jXcUYAsmzaIB6g
 YMEX8gjoO+3WdmFLQuP7Ko+nM3JcFnx6Odu1iLGo112V8bGqq9akNkXniU0XB2vYqP2h
 zo3E/L5G8PzgPvTprfyPmfiSP4luH/eHr1DuA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cIzDy9DTfDNRhN7LSYB97ye4DVyGrDXll/MmImkgT6U=;
 b=HIE2u3hTTpQUkECsaUHzimH7hh3caoIDThPvHdzNwAQXOUYg3KKuI1cP/VRJjpAMR9
 uWF87W7zzqGgBA1fz2y11S5eKILZVrt5+1XkPWejR4bcKICSqlolX9pQKRnHSv9SJVau
 Miw0r78PIk3nWnsQWx3sbNRFGbUDinJ4rQi0F8lil6Yro9SGZxPMktVXMMxDnAJWorIW
 3PeSngjrV/9oVPS9hDTPUkQivkjz4nwFHRVtcNs09+BZ9oV9sMpWXZRTMQJBGUUjhJbR
 1gCpgH/ST0kbXVHD+MhrU+xch7KuTIT20Xtp0b9GxpHepLsJO+kKfHpe4DVcIm2a3Q4y
 CEwA==
X-Gm-Message-State: APjAAAUjlxSmhHsrtlBlh5pj1U9yVCoPnQ5ZUmINcAsaYNJ1na4cw0Yr
 RkKHKUyLuFhBYZ1pSKtFVXkporpfgjM=
X-Google-Smtp-Source: APXvYqyNKL1SxMtIAJMsrdySJUdfWAAgy0iL6DmiBTLffyn/RmC5jW2Umh1lFCCUnscIgFm40eqzmA==
X-Received: by 2002:a2e:8684:: with SMTP id l4mr3164029lji.87.1571327604896;
 Thu, 17 Oct 2019 08:53:24 -0700 (PDT)
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com.
 [209.85.167.49])
 by smtp.gmail.com with ESMTPSA id t8sm1141587lfc.80.2019.10.17.08.53.22
 for <linux-riscv@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 17 Oct 2019 08:53:23 -0700 (PDT)
Received: by mail-lf1-f49.google.com with SMTP id u16so2316229lfq.3
 for <linux-riscv@lists.infradead.org>; Thu, 17 Oct 2019 08:53:22 -0700 (PDT)
X-Received: by 2002:a19:5504:: with SMTP id n4mr2890741lfe.106.1571327602667; 
 Thu, 17 Oct 2019 08:53:22 -0700 (PDT)
MIME-Version: 1.0
References: <000000000000830fe50595115344@google.com>
 <00000000000071e2fc05951229ad@google.com>
In-Reply-To: <00000000000071e2fc05951229ad@google.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Thu, 17 Oct 2019 08:53:06 -0700
X-Gmail-Original-Message-ID: <CAHk-=wjFozfjV34_qy3_Z155uz_Z7qFVfE8h=_9ceGU-SVk9hA@mail.gmail.com>
Message-ID: <CAHk-=wjFozfjV34_qy3_Z155uz_Z7qFVfE8h=_9ceGU-SVk9hA@mail.gmail.com>
Subject: Re: WARNING: refcount bug in find_key_to_update
To: syzbot <syzbot+6455648abc28dbdd1e7f@syzkaller.appspotmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_085328_614600_07AED754 
X-CRM114-Status: UNSURE (   9.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.6 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: aou@eecs.berkeley.edu, Palmer Dabbelt <palmer@sifive.com>,
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

On Wed, Oct 16, 2019 at 7:42 PM syzbot
<syzbot+6455648abc28dbdd1e7f@syzkaller.appspotmail.com> wrote:
>
> syzbot has bisected this bug to 0570bc8b7c9b ("Merge tag
>  'riscv/for-v5.3-rc1' ...")

Yeah, that looks unlikely. The only non-riscv changes are from
documentation updates and moving a config variable around.

Looks like the crash is quite unlikely, and only happens in one out of
ten runs for the ones it has happened to.

The backtrace looks simple enough, though:

  RIP: 0010:refcount_inc_checked+0x2b/0x30 lib/refcount.c:156
   __key_get include/linux/key.h:281 [inline]
   find_key_to_update+0x67/0x80 security/keys/keyring.c:1127
   key_create_or_update+0x4e5/0xb20 security/keys/key.c:905
   __do_sys_add_key security/keys/keyctl.c:132 [inline]
   __se_sys_add_key security/keys/keyctl.c:72 [inline]
   __x64_sys_add_key+0x219/0x3f0 security/keys/keyctl.c:72
   do_syscall_64+0xd0/0x540 arch/x86/entry/common.c:296
   entry_SYSCALL_64_after_hwframe+0x49/0xbe

which to me implies that there's some locking bug, and somebody
released the key without holding a lock.

That code looks a bit confused to me. Releasing a key without holding
a lock looks permitted, but if that's the case then __key_get() is
complete garbage. It would need to use 'refcount_inc_not_zero()' and
failure would require failing the caller.

But I haven't followed the key locking rules, so who knows. That "put
without lock" scenario would explain the crash, though.

David?

              Linus

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
