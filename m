Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1703B1FC4BD
	for <lists+linux-riscv@lfdr.de>; Wed, 17 Jun 2020 05:34:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CYC3wKm+rGHR3oKZCPsnazQoX7EJxWaWMk2iEh0mIyg=; b=JQm6+iCaEcGebc
	BvIY44srO7tUTqCckSrb8aN4ptsuRXjKWfasAW9GXACmDi06aNhOCvOG57pcY60MgQb4TbPO5rk3p
	g4v8OAIe1aGLm1cKPLfJS8bGyWyUIcYjFTJwwqKdvxXlbD7AzHjn0pfjMEYiCwFSaNaV9ScDyVIWM
	4yHQxsmGADueCL/6O7/ZGCxWq26UKm8HQmfdHBISukRfDgmkXyidw2AkVmYDptjts4DlOwzLq6Yus
	QfSdwiW2XcMrIaVbb7PqXkIKHbFjZjy30EyAM0KVlwO+gexu/DIhzMhgKJS/9DeWm8ckfx7YGtYU0
	aEek1BnSo00f1uLd5fOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlOqD-0004M4-S3; Wed, 17 Jun 2020 03:34:21 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlOqB-0004Lb-0y
 for linux-riscv@lists.infradead.org; Wed, 17 Jun 2020 03:34:20 +0000
Received: by mail-pl1-x641.google.com with SMTP id x11so297451plo.7
 for <linux-riscv@lists.infradead.org>; Tue, 16 Jun 2020 20:34:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=CYC3wKm+rGHR3oKZCPsnazQoX7EJxWaWMk2iEh0mIyg=;
 b=OGpnCRa/XmCNZ06hW7Jnq+m1GiolhJ0q5Tl6ndDdltL2uL+Rp68TTUh9g9hTmzHUeE
 G1muX7ngjy/k3UEquacJ7HjX32/R7W05ESjkt49K/Rc181EX/ZaF8MUfkcOyEz9sXPSa
 Z57CWu1sjXxeJ9vbeI7YxzGylLQkDEREa0lVphm/hRPI5h5c1o1m9oELfQKIKQsdGcAF
 aaFJWaA2kqzz1elSKOvctwFloB6LP2Cq24cadAD4jGE9sF/LkJgE4vMqIfk/vyK6cWmo
 hQea0nPDLLCxRqGZdF9+oJjaI6r22kFziLs9S3IbBgDY2+SAfEemtPZF8jdvtjTiyjLR
 +5CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=CYC3wKm+rGHR3oKZCPsnazQoX7EJxWaWMk2iEh0mIyg=;
 b=N77C81WBG11H0887R2UiK/bK1FWV+WUe1IYgo51HRstVqgmcKjETIOqjDoVXc8PlZE
 mgYgzUWtuyQlivmbcno4AnCPer/ZqoWIzlIOKMq96TvcD32X+f4hLya39NUPTEf6K+eC
 faECbW5WZaO/rJWZZ0HquJHbanFIhMTh1XuWpcpEfz6Qcz0nMWUXvUoYhRQimCyPgAU4
 +O6p/X3cprkqHRkYdF0wCjwfd6m0V6s2qtvrjw82jKMmRpehhOMiYRTVDKXJLPU5hfOY
 bsOAtJCh2HcTUtT/a0UpS22gP1vROhm+z6tgAUSdobXgdNtjRVtwIjaBWWccuZ9BsIV6
 USrQ==
X-Gm-Message-State: AOAM530DVY01B3DHkvKI1x+pk3Ihj/HPZHjLkw8rUwmouWHfl2bL9eTi
 0LwvIQeKhtZeBD0tvaoQUOjENpHTNalQ/GYFSzmpEg==
X-Google-Smtp-Source: ABdhPJxVGi5BPSWwjpSWzRJwdssKWb6v2nFyVJNVBMZm/WyoZLyMIJfLTS9kb9n8hmBXdkmVvngvU6qUyzx0jNZFGjg=
X-Received: by 2002:a17:90a:bf0b:: with SMTP id
 c11mr6100051pjs.47.1592364855422; 
 Tue, 16 Jun 2020 20:34:15 -0700 (PDT)
MIME-Version: 1.0
References: <20200612084350.GA1108986@ubuntu-n2-xlarge-x86>
 <CAFP8O3+ydp6y9V4N1-9igHDhVjxqqYUecAYa3fT21FBTWtNx+w@mail.gmail.com>
 <20200617024228.GA2330477@ubuntu-n2-xlarge-x86>
In-Reply-To: <20200617024228.GA2330477@ubuntu-n2-xlarge-x86>
From: =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
Date: Tue, 16 Jun 2020 20:34:04 -0700
Message-ID: <CAFP8O3Kf54SYBKMTQDhJ+UwTate7KDszSGG1MwPJc0kTFhqkWw@mail.gmail.com>
Subject: Re: Upstream binutils commit a87e1817a435dab6c6c042f9306497c9f13d4236
 breaks building the RISC-V vDSO
To: Nathan Chancellor <natechancellor@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_203419_085716_E4D8067B 
X-CRM114-Status: GOOD (  20.12  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: linux-riscv@lists.infradead.org, Albert Ou <aou@eecs.berkeley.edu>,
 Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, Jun 16, 2020 at 7:42 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> Hi Fangrui,
>
> On Fri, Jun 12, 2020 at 08:41:56AM -0700, F=C4=81ng-ru=C3=AC S=C3=B2ng wr=
ote:
> > On Fri, Jun 12, 2020 at 1:43 AM Nathan Chancellor
> > <natechancellor@gmail.com> wrote:
> > >
> > > Hi all,
> > >
> > > Upstream binutils commit a87e1817a4 ("Have the linker fail if any att=
empt
> > > to link in an executable is made.") causes the RISC-V vDSO to fail to
> > > build properly (it is fixing this bug report:
> > > https://sourceware.org/bugzilla/show_bug.cgi?id=3D26047):
> > >
> > > $ make -skj"$(nproc)" ARCH=3Driscv CROSS_COMPILE=3Driscv64-linux- O=
=3Dout/riscv distclean defconfig arch/riscv/kernel/vdso/
> > > riscv64-linux-ld: cannot use executable file 'arch/riscv/kernel/vdso/=
vdso-dummy.o' as input to a link
> > >
> > > I do not really understand what the whole point of the vDSO rule is b=
ut
> > > it seems like it should be fixed due to this change. Additionally, th=
e
> > > kernel has generally been getting rid of using $(CC) as a linker,
> > > instead preferring to use $(LD) directly; it would be nice if the RIS=
C-V
> > > vDSO's Makefile could be rewritten to do that.
> > >
> > > See
> > >
> > > fe00e50b2db8 ("ARM: 8858/1: vdso: use $(LD) instead of $(CC) to link =
VDSO")
> > > 691efbedc60d ("arm64: vdso: use $(LD) instead of $(CC) to link VDSO")
> > > 2ff906994b6c ("MIPS: VDSO: Use $(LD) instead of $(CC) to link VDSO")
> > >
> > > for more examples of that. I would take a stab at it myself but this
> > > does not seem like a straight conversion due to the way the VDSOLD ru=
le
> > > is set up.
> > >
> > > Cheers,
> > > Nathan
> >
> > I suggested that GNU ld from 2.35 onwards disallows accepting ET_EXEC
> > as input (https://sourceware.org/bugzilla/show_bug.cgi?id=3D26047 ). Th=
e
> > error message is from the patch.
> > Taking ET_EXEC files as input are usually errors.
> >
> > If we do need to take ET_EXEC as input, we can change e_type in the
> > ELF header to make the file an ET_REL
> >
> > printf '\1' | dd of=3D${2} conv=3Dnotrunc bs=3D1 seek=3D16 status=3Dnon=
e
> > (See http://git.kernel.org/linus/90ceddcb495008ac8ba7a3dce297841efcd7d5=
84 )
>
> Is there a convenient way to do this in a Makefile? The relevant rule
> is:
>
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/a=
rch/riscv/kernel/vdso/Makefile#n63
>
> I am not sure if that is strictly necessary, hence the initial email.
>
> Cheers,
> Nathan

If I understand correctly,

$(obj)/vdso-dummy.o:
...
        printf '\1' | dd of=3D$@ conv=3Dnotrunc bs=3D1 seek=3D16 status=3Dn=
one

should fix the issue. The change can be made along with the migration
from $(CC) to $(LD). Hope an arch/riscv maintainer can do this.

