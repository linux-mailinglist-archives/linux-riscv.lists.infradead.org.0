Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBF729D434
	for <lists+linux-riscv@lfdr.de>; Mon, 26 Aug 2019 18:40:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bca+cmn1+AUqSD0OVjLUnAHtIQlb2mNc14JCMGGWgdc=; b=XBkq+72y4fif1b
	9ci14uL6zi7zS+5kjkgqMT9Ma21Qy+W44awJTVn7p8vV8eOspMmscxT1JSIAyomrBmKSeZIpIIN1v
	ddzMZPa4aYk3/4sW7O5yiqmgSHqGr4/YhXUQu/zKA6aCBgkQeSRHXgBcsNN9Iy8mizuMVnDl6Kzhi
	hBLt5MPGEpA+l5ObCBUFMeRkRshecglob2LrwanuD276JVn72LqtuDFGQ4DAoTOxE8waPoPEOAPtQ
	SbFrGrdSpKQdNZ500VNltuQ9BW1JS9mMwD+d6kbL3VRvC8RpI7Z1emJdEvgCGfZ2pN+2tw3ZCv2Wx
	YPQnI+hNfSEIx1kQw1Pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2I2q-0002NX-Ua; Mon, 26 Aug 2019 16:40:41 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2I2g-0002Mj-DX
 for linux-riscv@lists.infradead.org; Mon, 26 Aug 2019 16:40:32 +0000
Received: by mail-wm1-x341.google.com with SMTP id o4so173527wmh.2
 for <linux-riscv@lists.infradead.org>; Mon, 26 Aug 2019 09:40:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QjxgBXa3y+uuhZsdeO1qBTZUTIy7XmFfl96V9DIMo6Q=;
 b=fP2Xk61Pf9uROtag057QqLPki/+ga9LNABXUsoDIZwVgKzbaYY+Yv54/cDTBAKId+L
 Gsa9FVVOLgcFlieoK30m+kYMru8msmE8LoggM8vJq/vdFO5xSMSr2LvZhqfkrFHXjhov
 6rD3Xh8wbBkjlyhtb6/yu5I7HY09bDnj1SpktDTI8oAOdA7J0NOLAlDbY2lLOwpdhVKk
 cgebex/jZ8OF4iLFyBI5qhK43EJK74aDyp2TI03EElLOgyt3ObsAka0s9GSEMRH+4nIE
 wzpWbuPNjYFtI1GG4jgryZIAosVXa3K6wI33LepQmdDRTSqGL6fvoKnf8pvI24SlblRD
 GsiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QjxgBXa3y+uuhZsdeO1qBTZUTIy7XmFfl96V9DIMo6Q=;
 b=BCPP4iGiMb5wMCdfw8opmPhtBzByZCPpsIFOG3R2bo4D+wzRP5m3eQ/NAaIEGcbsZY
 1QVhVGgGzc+Kjn1NgHr0yXmZrHJ48HU1OIcGJGdlqE7Rq9mYgFNQ6kRv4ikfx+alu2YP
 h7QxGf1Xuh6gKjCMAOzw32bK3ujB3wHZ5VJnXnBCx5EmQtAWgT17ZzxYH696ApxqurYF
 zkeIKTty/EvKDouhsf7Zoo0GYO3ctJNywNHr6oNH/o6558FCixo4Gzra3bzRRaRSO9Ov
 YPWUXB/t5NocKUWwhq7x4dpJkf1rBSzzSmfDs1Rtq7M1FasFUQ9KpQ1rdEWCuWsOS/mq
 uqKw==
X-Gm-Message-State: APjAAAUCyx3rg7VF1y4J3GT5Jar2rzFwe5IYlunXFvnGZBUujlYMc47c
 VFvgMLWZCkcjJU0DX5iUQqkvZXKXCJSyTrtYt6M=
X-Google-Smtp-Source: APXvYqyR0ybZtJiikv+kwAVgdY7AWb/vcdMGH7sI0c/nWNAyYF6Ch2IHDX6ee2DH+0Mm7f0lXuO3Rk/bCGgW2RweGT4=
X-Received: by 2002:a1c:e487:: with SMTP id b129mr23317012wmh.93.1566837626850; 
 Mon, 26 Aug 2019 09:40:26 -0700 (PDT)
MIME-Version: 1.0
References: <20190822205533.4877-1-david.abdurachmanov@sifive.com>
 <alpine.DEB.2.21.9999.1908231717550.25649@viisi.sifive.com>
 <20190826145756.GB4664@cisco>
In-Reply-To: <20190826145756.GB4664@cisco>
From: David Abdurachmanov <david.abdurachmanov@gmail.com>
Date: Mon, 26 Aug 2019 09:39:50 -0700
Message-ID: <CAEn-LTrtn01=fp6taBBG_QkfBtgiJyt6oUjZJOi6VN8OeXp6=g@mail.gmail.com>
Subject: Re: [PATCH v2] riscv: add support for SECCOMP and SECCOMP_FILTER
To: Tycho Andersen <tycho@tycho.ws>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_094030_635990_C55F507F 
X-CRM114-Status: GOOD (  14.29  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (david.abdurachmanov[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 URIBL_SBL_A Contains URL's A record listed in the Spamhaus SBL
 blocklist [URIs: fedoraproject.org]
 0.6 URIBL_SBL Contains an URL's NS IP listed in the Spamhaus SBL
 blocklist [URIs: fedoraproject.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Daniel Borkmann <daniel@iogearbox.net>, Yonghong Song <yhs@fb.com>,
 me@carlosedp.com, Albert Ou <aou@eecs.berkeley.edu>,
 Kees Cook <keescook@chromium.org>, Alexios Zavras <alexios.zavras@intel.com>,
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

On Mon, Aug 26, 2019 at 7:57 AM Tycho Andersen <tycho@tycho.ws> wrote:
>
> Hi,
>
> On Fri, Aug 23, 2019 at 05:30:53PM -0700, Paul Walmsley wrote:
> > On Thu, 22 Aug 2019, David Abdurachmanov wrote:
> >
> > > There is one failing kernel selftest: global.user_notification_signal
> >
> > Also - could you follow up with the author of this failing test to see if
> > we can get some more clarity about what might be going wrong here?  It
> > appears that the failing test was added in commit 6a21cc50f0c7f ("seccomp:
> > add a return code to trap to userspace") by Tycho Andersen
> > <tycho@tycho.ws>.
>
> Can you post an strace and a cat of /proc/$pid/stack for both tasks
> where it gets stuck? I don't have any riscv hardware, and it "works
> for me" on x86 and arm64 with 100 tries.

I don't have the a build with SECCOMP for the board right now, so it
will have to wait. I just finished a new kernel (almost rc6) for Fedora,
but it will take time to assemble new repositories and a disk image.

There is older disk image available (5.2.0-rc7 kernel with v2 SECCOMP)
for QEMU or libvirt/QEMU:

https://dl.fedoraproject.org/pub/alt/risc-v/disk-images/fedora/rawhide/20190703.n.0/Developer/
https://fedoraproject.org/wiki/Architectures/RISC-V/Installing#Boot_with_libvirt

(If you are interesting trying it locally.)

IIRC I attempted to connected with strace, but it quickly returns and fails
properly. Simply put strace unblocks whatever is stuck.

david

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
