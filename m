Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ABDCA0C89
	for <lists+linux-riscv@lfdr.de>; Wed, 28 Aug 2019 23:40:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z2ytBJz9ILG0tIcXbXiOomGJlT+//xkecHoIiS/Rru0=; b=TTypgjtbld0XoP
	ue2YPwyCnGwPhnVX20XYCF7/S2cxPAUt3e96bH32Xh3cbWYqlh5uvd75CLQpXroDmkFkpBxqG+Wqz
	TdKPtgjxFHQEoVM5tjh+dfLs4r1i/rvpL4c5Dw4nXWhsOzHUEGLgYaLKBwGHd3cjO6VA9mVMsiyPi
	wDQ3vQrvpAIR7Mv3hadN/xWi2wqKJSt8ra2VtO8D2RDKEkD1BtocQ96qj29C6EXzQkqEuMiPxTt8N
	c0ZZ8/qVwa0S2wZD9B45m6i/cmJKwDqyDNOmfMB3TAEF9ac9uNk7th0QNbGVyr2AMeh5DYS8nlyP3
	/hQoawgdDlFE6z8bqCnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i35gG-0007b5-Hi; Wed, 28 Aug 2019 21:40:40 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i35gC-0007af-N2
 for linux-riscv@lists.infradead.org; Wed, 28 Aug 2019 21:40:38 +0000
Received: by mail-wm1-x341.google.com with SMTP id v15so1578639wml.0
 for <linux-riscv@lists.infradead.org>; Wed, 28 Aug 2019 14:40:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Fl6SJhDThIzLVktnxnUQoR6p6jMmSRZeGxNzVfHmfGc=;
 b=hP0eYnVngg0lq1hP3JK2h2x4x8ZP/LkgNSObaO5dsLMMR2EJ6hZWoQU0HSs2LYhSsb
 jZvfF3tenLWEI+TfyOXld/nC78gwghtTXq74BisZRBq370GK9BohnQcL+QB/VOVBzyRN
 sHUYswv7Krf01vNRoTte5Qv63es97SoJOsPRRwu8NnmyqYX+eL8ro9JYWEOuONfzdNxp
 QKIKfpzf935Zo9T1KzQ35aqV+s9JSs1l9PnjjYCoAWY3soLZBXfPod0i/RQpPZVAIXjn
 8cFh1mpvHFd7YJpzBB7JyY2kJ8UTY+oxj5b63/JZLCRI08fYwRk3aBygjrSbuM3d0PUe
 pxqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Fl6SJhDThIzLVktnxnUQoR6p6jMmSRZeGxNzVfHmfGc=;
 b=brb04Dn5xqPivDb5zHWt3aZRgo6FviRZCMT7lrPks40IQfA+e0jYcT1xYis/QPN8Bt
 7Sn4l7Q3x4An9NEJozaHyDX8nYE2VoMjLY+AOH6R4IQBVUG6m0jFDgXoOYrQIqgbGPxE
 7c5v+LTUbREsXEuQiIyta4C4o4fwCNVyW/BXSvWcPBUsToN2uVkWxMuAGIQW7Hf/PNeG
 nUH0IsH6bU1kU2pSdTMb5jqz/WNeiWkPkTRHepIw3k+IO17IfBjXM4o8gPAE+rU52zXv
 wvH4PROl/07ntS61H0J/DyqwkmiTvjhoSSVBbP2vHr53Xsfz+SvdA63/HNCbKh0qVPjZ
 QY2g==
X-Gm-Message-State: APjAAAXCMQFCuPCcBrf8eFF8I1SJ8k0ipGNCR6O5f1bRBmVszd3tiDXs
 CTRhT5dRnqG9rxIJK6eSkSlhGRFQtip5fRIYB+g=
X-Google-Smtp-Source: APXvYqxOcImQNzypGFeVWXGp9py8wxlKFKPpz27tdDyzrs1uINU6LbYMgXisOoMzDrWVf3NaJrKHA50+j9kgwxhzJro=
X-Received: by 2002:a7b:c3d4:: with SMTP id t20mr7052016wmj.71.1567028435172; 
 Wed, 28 Aug 2019 14:40:35 -0700 (PDT)
MIME-Version: 1.0
References: <20190822205533.4877-1-david.abdurachmanov@sifive.com>
 <alpine.DEB.2.21.9999.1908231717550.25649@viisi.sifive.com>
 <201908251446.04BCB8C@keescook>
In-Reply-To: <201908251446.04BCB8C@keescook>
From: David Abdurachmanov <david.abdurachmanov@gmail.com>
Date: Wed, 28 Aug 2019 14:39:59 -0700
Message-ID: <CAEn-LTpSPV6NDQ+J3GJxS=rtNMS384uQmq_EuR3ZN_qCGSbyww@mail.gmail.com>
Subject: Re: [PATCH v2] riscv: add support for SECCOMP and SECCOMP_FILTER
To: Kees Cook <keescook@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_144036_754768_AD556786 
X-CRM114-Status: GOOD (  18.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (david.abdurachmanov[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Song Liu <songliubraving@fb.com>, Alan Kao <alankao@andestech.com>,
 Palmer Dabbelt <palmer@sifive.com>, Alexei Starovoitov <ast@kernel.org>,
 Oleg Nesterov <oleg@redhat.com>, linux-kselftest@vger.kernel.org,
 linux-riscv@lists.infradead.org, Shuah Khan <shuah@kernel.org>,
 Tycho Andersen <tycho@tycho.ws>, Daniel Borkmann <daniel@iogearbox.net>,
 Yonghong Song <yhs@fb.com>, me@carlosedp.com,
 Albert Ou <aou@eecs.berkeley.edu>, Alexios Zavras <alexios.zavras@intel.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Thomas Gleixner <tglx@linutronix.de>,
 Allison Randal <allison@lohutok.net>, Will Drewry <wad@chromium.org>,
 David Abdurachmanov <david.abdurachmanov@sifive.com>, netdev@vger.kernel.org,
 Anup Patel <Anup.Patel@wdc.com>, linux-kernel@vger.kernel.org,
 Andy Lutomirski <luto@amacapital.net>, Vincent Chen <vincentc@andestech.com>,
 bpf@vger.kernel.org, Martin KaFai Lau <kafai@fb.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, Aug 28, 2019 at 10:36 AM Kees Cook <keescook@chromium.org> wrote:
>
> On Fri, Aug 23, 2019 at 05:30:53PM -0700, Paul Walmsley wrote:
> > On Thu, 22 Aug 2019, David Abdurachmanov wrote:
> >
> > > There is one failing kernel selftest: global.user_notification_signal
> >
> > Is this the only failing test?  Or are the rest of the selftests skipped
> > when this test fails, and no further tests are run, as seems to be shown
> > here:
> >
> >   https://lore.kernel.org/linux-riscv/CADnnUqcmDMRe1f+3jG8SPR6jRrnBsY8VVD70VbKEm0NqYeoicA@mail.gmail.com/
> >
> > For example, looking at the source, I'd naively expect to see the
> > user_notification_closed_listener test result -- which follows right
> > after the failing test in the selftest source.  But there aren't any
> > results?
> >
> > Also - could you follow up with the author of this failing test to see if
> > we can get some more clarity about what might be going wrong here?  It
> > appears that the failing test was added in commit 6a21cc50f0c7f ("seccomp:
> > add a return code to trap to userspace") by Tycho Andersen
> > <tycho@tycho.ws>.
>
> So, the original email says the riscv series is tested on top of 5.2-rc7,
> but just for fun, can you confirm that you're building a tree that includes
> 9dd3fcb0ab73 ("selftests/seccomp: Handle namespace failures gracefully")? I
> assume it does, but I suspect something similar is happening, where the
> environment is slightly different than expected and the test stalls.
>
> Does it behave the same way under emulation (i.e. can I hope to
> reproduce this myself?)

This was tested in 5.2-rc7 and later in 5.3-rc with the same behavior.
Also VM or physical HW doesn't matter, same result.

>
> --
> Kees Cook

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
