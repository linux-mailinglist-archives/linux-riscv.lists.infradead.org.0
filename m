Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 601C61E187B
	for <lists+linux-riscv@lfdr.de>; Tue, 26 May 2020 02:30:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bbaFW26aHyI1W3kenO+piVcQbffPSdv3tHMdMsAKjU4=; b=sp7WGvjBwaiXAqegOcf9oNADC
	FCSIygh/njrRecbb6liy4stO87DrQPVQp1+fMKZbw7AEJIBKJPVH/mw7mRDSpQRuE5YpIO3fRUOte
	+ABsQo1sgdD3ynceGcWSQGUNTvE24hFd8jrB7Cg4TiSGP29Oe9YkJqy8l4mFz29Kw3xY8mG2waiK1
	yhXwzWF09ca9PRAY9Z9JIiolHWAbcXiV/pUCJQF6/Gu+smGo7c4Hg6B39VLJGM419PqThvRSNEJQZ
	bm4DtxzmX5RYEypOhd/uDs7iMXsP+X8qMe3rxOMjLzGCq+BCicxWEeWdXVoRa5PudnvbP3vTeYQZm
	WTwmMlQfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdNTr-0005VG-AT; Tue, 26 May 2020 00:30:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdNTn-0004U3-0A
 for linux-riscv@lists.infradead.org; Tue, 26 May 2020 00:30:04 +0000
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com
 [209.85.208.173])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1F1D920657
 for <linux-riscv@lists.infradead.org>; Tue, 26 May 2020 00:29:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590452998;
 bh=jiUY9V1Bkztcy/8t94YHlJD2RQ8+uVmK8V+BpsmrT84=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=BW5Enqv4WR4JyXZJdRRGLYXdZr3N6KfpHYCM4QRjtAOoLAvkGODYbq8m7cSUpYr/p
 wz3aBLKG5OYqZsQtZL6H+G+OReE+9bkwqnvO2bg72f53fNq45Wc1OryZUwmiPv17DH
 eOy4QFeACjU4/YCPtfDuuTM3YAJZs89XfudA510U=
Received: by mail-lj1-f173.google.com with SMTP id c11so20270711ljn.2
 for <linux-riscv@lists.infradead.org>; Mon, 25 May 2020 17:29:58 -0700 (PDT)
X-Gm-Message-State: AOAM531QpJRGx3ZIDAvJ+FuPH+PSK96KiYw+S3JBrhaBydn9DKi3Sxo4
 ku/yHPW2pp9Cdi+a33iABnajFyGjNh/rkOxL9G0=
X-Google-Smtp-Source: ABdhPJzFPVX/ZQf6wS3uG4u1AQO/qZu5mRLPhUvY8Gw1ZniByoGz0/NOLxDK7AXmEvwSyD7D/23iC3BzwLGiaZ/F7/E=
X-Received: by 2002:a2e:160e:: with SMTP id w14mr12316006ljd.66.1590452996282; 
 Mon, 25 May 2020 17:29:56 -0700 (PDT)
MIME-Version: 1.0
References: <1590416306-66453-1-git-send-email-guoren@kernel.org>
 <20200525143648.GM2605652@cisco>
In-Reply-To: <20200525143648.GM2605652@cisco>
From: Guo Ren <guoren@kernel.org>
Date: Tue, 26 May 2020 08:29:45 +0800
X-Gmail-Original-Message-ID: <CAJF2gTS4gM39KWuksRRT9ONPhbhYuN9r1oOP_qRT8KvDga4vyA@mail.gmail.com>
Message-ID: <CAJF2gTS4gM39KWuksRRT9ONPhbhYuN9r1oOP_qRT8KvDga4vyA@mail.gmail.com>
Subject: Re: [PATCH] riscv: Remove unnecessary path for syscall_trace
To: Tycho Andersen <tycho@tycho.ws>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_173003_072706_C8F20AA2 
X-CRM114-Status: GOOD (  10.86  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Guo Ren <guoren@linux.alibaba.com>, keescook@chromium.org,
 Anup Patel <anup@brainfault.org>, palmerdabbelt@google.com,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Tycho,

On Mon, May 25, 2020 at 10:36 PM Tycho Andersen <tycho@tycho.ws> wrote:
>
> On Mon, May 25, 2020 at 02:18:26PM +0000, guoren@kernel.org wrote:
> > From: Guo Ren <guoren@linux.alibaba.com>
> >
> > Obviously, there is no need to recover a0-a7 in reject path.
> >
> > Previous modification is from commit af33d243 by Tycho, to
> > fixup seccomp reject syscall code path.
>
> Doesn't this suffer from the same problem, though? a7 is clobbered, so
> the -ERESTARTSYS behavior won't work?

Look, the patch only affects the path of ret_from_syscall_rejected,
and there are two possible paths:
1. ret_from_syscall_rejected->handle_syscall_trace_exit->ret_from_exception
2. ret_from_syscall_rejected->ret_from_exception

All the above skip the check_syscall_nr and ignore the current a7, in
the C function they use the pt_regs in the stack to get proper reg's
value.

For the -ERESTARTSYS, we only process it in:
ret_from_exception->resume_userspace->work_notifysig->do_notify_resume:
do_signal & handle_signal:

                switch (regs->a0) {
                case -ERESTARTNOHAND:
                case -ERESTARTSYS:
                case -ERESTARTNOINTR:
                        regs->a0 = regs->orig_a0;
                        regs->epc -= 0x4;
                        break;

All above are done in pt_regs and when returning to userspace, a7 will
be recovered by restore_all in entry.S.

                               ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
-- 
Best Regards
 Guo Ren

ML: https://lore.kernel.org/linux-csky/

