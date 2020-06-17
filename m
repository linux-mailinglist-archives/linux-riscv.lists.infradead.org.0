Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00C101FC436
	for <lists+linux-riscv@lfdr.de>; Wed, 17 Jun 2020 04:42:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jvrWt2KbkHmTuAZbcrxVNHOk/guIipx7rSp4yoc8Zdo=; b=OLJD3WdDP4VzVSL1FfThtRXaF
	hydUNBhwZigI3g9VkE3Vp53hTI87G0xD/qQydxSocMwbxwJmutVKXKSIOxFmVJINtLYHvHn2vo9aJ
	734KoF9rNjhAURFnPwSqRW7nZJSHcqbOxYrurOZ3FQBrpbk2LTXFV7Hfk2B3DFJ71eGnME8cIdWhq
	CTqsq+AuJUfeOxN3cH4L0egf5LsLQdCv/czo7ulKjm0bo9FEl6TuzMedzr3kXqrcPeDejqPV1FmJu
	jmNC0p9NiNsQP+UX5tktT+2Fi5Ym+DjyxFoYwI+FFJdn+qcCo2u0vIolCG2bHtQMiU5lJ0KrAW7Nc
	mrnlWp/bQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlO28-00067m-6H; Wed, 17 Jun 2020 02:42:36 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlO24-00067K-LE
 for linux-riscv@lists.infradead.org; Wed, 17 Jun 2020 02:42:34 +0000
Received: by mail-oi1-x244.google.com with SMTP id 25so422805oiy.13
 for <linux-riscv@lists.infradead.org>; Tue, 16 Jun 2020 19:42:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=jvrWt2KbkHmTuAZbcrxVNHOk/guIipx7rSp4yoc8Zdo=;
 b=bSDfu19MUyXzUkW6cA9hwnMCjpPa4bTGL6Fv9v5NjYczTGTRdynnoIf1OjAa9A4ADy
 al4wgPI2oP0702nxCEeSFaS88fhGHv1MuUzeD2CfS5pBDe/d3L+jNXLWLEm2HrpUU+iQ
 LLTLC4aTurLfclFYlPjfX53gPFexn737ACIWanqZIWz9BfZW/DXZFAcR210YpHNHbaZx
 GrWSeNpQM9NY3lzzpEiymon2QJx9+2lG4/mD8ettbZa/HB05iRnrC5+xyLHiX0F1LF4x
 dDBkKizymyoljCA2dCxfVCd3rRr+aKXgERYOOC3wGwvOSRnt9vUR3yu6thWezFPmIeGH
 oYlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=jvrWt2KbkHmTuAZbcrxVNHOk/guIipx7rSp4yoc8Zdo=;
 b=Je0Neoty0u/iVspG3HBytbGZ5GKyYP4/ucb8Kr4H2DJVj1cGcroEi5Dnkd6nr0prBl
 G+HwLEjtir4+3Vcu2WsglAnJmO7nyN6Je4KhpWf03Iu4T2u4fB1WmfitNFcHMn/RgEBH
 2GQ3apf8DN5XIAvLUoJx3T7SqEPvcgYUIB9rrt+iY6IK+eJ/xZuyu+aFzLCPD8pyVcSV
 02OEdk8g+NLQIOTLzQ0NO/Sv0Yr0c0JvBeLc9TrzIOzm0HpDRXz00MACGdO3w+zhw93H
 UwRIvUJzwq9FNdVObgpA8JdBA53EtruFX0CjaA2+IYjj9mmIy77llujaItTk4yUjCjmY
 9C6w==
X-Gm-Message-State: AOAM5320jBKebxL4c2JrbXIDk5Ve5XSy/RMTGLgCPgtRdZVUtVQPY77+
 Ug6NZB7izUGjCtOigzQCTo8=
X-Google-Smtp-Source: ABdhPJzLCv5YIQr9L5vxpHlBBzZkUr1WL5oMnwm4wGTI6IkHtAnmYZ0R0/vszIcht6lNrjb7LoLruQ==
X-Received: by 2002:aca:51ca:: with SMTP id f193mr5941352oib.170.1592361751462; 
 Tue, 16 Jun 2020 19:42:31 -0700 (PDT)
Received: from ubuntu-n2-xlarge-x86 ([2604:1380:4111:8b00::3])
 by smtp.gmail.com with ESMTPSA id b2sm4600537ooe.13.2020.06.16.19.42.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 19:42:30 -0700 (PDT)
Date: Tue, 16 Jun 2020 19:42:28 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: =?utf-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
Subject: Re: Upstream binutils commit
 a87e1817a435dab6c6c042f9306497c9f13d4236 breaks building the RISC-V vDSO
Message-ID: <20200617024228.GA2330477@ubuntu-n2-xlarge-x86>
References: <20200612084350.GA1108986@ubuntu-n2-xlarge-x86>
 <CAFP8O3+ydp6y9V4N1-9igHDhVjxqqYUecAYa3fT21FBTWtNx+w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAFP8O3+ydp6y9V4N1-9igHDhVjxqqYUecAYa3fT21FBTWtNx+w@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_194232_696701_46ED7F2C 
X-CRM114-Status: GOOD (  17.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [natechancellor[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-riscv@lists.infradead.org, Albert Ou <aou@eecs.berkeley.edu>,
 Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Fangrui,

On Fri, Jun 12, 2020 at 08:41:56AM -0700, Fāng-ruì Sòng wrote:
> On Fri, Jun 12, 2020 at 1:43 AM Nathan Chancellor
> <natechancellor@gmail.com> wrote:
> >
> > Hi all,
> >
> > Upstream binutils commit a87e1817a4 ("Have the linker fail if any attempt
> > to link in an executable is made.") causes the RISC-V vDSO to fail to
> > build properly (it is fixing this bug report:
> > https://sourceware.org/bugzilla/show_bug.cgi?id=26047):
> >
> > $ make -skj"$(nproc)" ARCH=riscv CROSS_COMPILE=riscv64-linux- O=out/riscv distclean defconfig arch/riscv/kernel/vdso/
> > riscv64-linux-ld: cannot use executable file 'arch/riscv/kernel/vdso/vdso-dummy.o' as input to a link
> >
> > I do not really understand what the whole point of the vDSO rule is but
> > it seems like it should be fixed due to this change. Additionally, the
> > kernel has generally been getting rid of using $(CC) as a linker,
> > instead preferring to use $(LD) directly; it would be nice if the RISC-V
> > vDSO's Makefile could be rewritten to do that.
> >
> > See
> >
> > fe00e50b2db8 ("ARM: 8858/1: vdso: use $(LD) instead of $(CC) to link VDSO")
> > 691efbedc60d ("arm64: vdso: use $(LD) instead of $(CC) to link VDSO")
> > 2ff906994b6c ("MIPS: VDSO: Use $(LD) instead of $(CC) to link VDSO")
> >
> > for more examples of that. I would take a stab at it myself but this
> > does not seem like a straight conversion due to the way the VDSOLD rule
> > is set up.
> >
> > Cheers,
> > Nathan
> 
> I suggested that GNU ld from 2.35 onwards disallows accepting ET_EXEC
> as input (https://sourceware.org/bugzilla/show_bug.cgi?id=26047 ). The
> error message is from the patch.
> Taking ET_EXEC files as input are usually errors.
> 
> If we do need to take ET_EXEC as input, we can change e_type in the
> ELF header to make the file an ET_REL
> 
> printf '\1' | dd of=${2} conv=notrunc bs=1 seek=16 status=none
> (See http://git.kernel.org/linus/90ceddcb495008ac8ba7a3dce297841efcd7d584 )

Is there a convenient way to do this in a Makefile? The relevant rule
is:

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/riscv/kernel/vdso/Makefile#n63

I am not sure if that is strictly necessary, hence the initial email.

Cheers,
Nathan

