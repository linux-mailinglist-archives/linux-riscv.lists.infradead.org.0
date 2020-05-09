Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BC0F1CC51D
	for <lists+linux-riscv@lfdr.de>; Sun, 10 May 2020 01:27:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/526PjPnbjCwilKm7RsHfW0Ne/bEDskYmPkox9dhVf0=; b=i9/fTE5LPwC+uDVxQIj69zhcF
	IH4biRM4y6yBZcU/hJabXLN7bEnZDhCHVCNn+vTqLjii9/Pk2SPnxveAOKjcgEL3KI9ydIQZbIRDN
	m1x4FETHfSoyegSf+6W3BpkTzmK/hFnS8d7eOq8F+03FdrvLt9UjhhkyCS1fAO/Tq7mYxo5b4BXcu
	+HT8LA1hgKSvFVfRHNoaoWTvqzrCuHNocntUMcQ6h1dkOYo4vtzj0kgGFExqmgTzPzjTKfeFyNPne
	M4pVRv54q8V5hfnkpY1gLjG7blD4BY5cyKlnf8zMHTKfP0Lio59bfDN1DK/06gdcqbHTJFqR0ZO/l
	Ac74vZKFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXYsJ-0000qT-5U; Sat, 09 May 2020 23:27:19 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXYsG-0000pk-09
 for linux-riscv@lists.infradead.org; Sat, 09 May 2020 23:27:17 +0000
Received: by mail-lf1-x142.google.com with SMTP id v5so288427lfp.13
 for <linux-riscv@lists.infradead.org>; Sat, 09 May 2020 16:27:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/526PjPnbjCwilKm7RsHfW0Ne/bEDskYmPkox9dhVf0=;
 b=J6GSYDTxcjkpJ68uD/bLGdCa08JXEON68qGsC5jjDyX0dXL7P1sV4tN24W7cJuDQLu
 dwkQCm4gYLNybNoSpRZa/NEVgkvOibr6OUuJ757fJfSIhdWS/WQJ1IByySQn/0+kf1VM
 3/WoQH/EKw/gyZH0IBGeQF1jLOK27vvFeL5Yw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/526PjPnbjCwilKm7RsHfW0Ne/bEDskYmPkox9dhVf0=;
 b=VCER9Qlr3AeslH2fIZbfgFqrxY/V5ndzHZuuMZcG0Y0zjZPVy/Q0yiMlqCslEvWFeL
 mJAjpmCIPpZCB9wZs0BHjpDrZKKeNZpomLnr84AgIGGTjfxfkIMsUdPe3BNMmcuInPF9
 TuUT0eYW1XW1gM+Zp95LTcMz5OoKmof4SAuLjXO/Il/eQfpDuZKxCHMljswPypl0snPZ
 LTUkl+RYgQqqBmZHTgoI6GIOcHPiVSzbPzXuvUxGA62249AWgwk6A8TLTyHSLMcpBxwa
 XYLCc9w53eGEjxoEHlkV1G22mVimZ1k/8JMd5uNOJp1j7llIngW1yaEBXie3I0OuG+6f
 RIrg==
X-Gm-Message-State: AOAM530aXlhV8pNWF2XWss2dbmrbD+gB2IvaVKiz006tsmNs7Y/H4Axu
 neDckjubN4juDI3mGSlh7a8DIpl0nk4=
X-Google-Smtp-Source: ABdhPJywTTTS3Vp1dwHbigoFbbySulLqQ0SdclnxiPCv66T31r9oOlpbPmL97e53VrdfaS3Ci7mjHg==
X-Received: by 2002:a19:5518:: with SMTP id n24mr6207351lfe.61.1589066831025; 
 Sat, 09 May 2020 16:27:11 -0700 (PDT)
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com.
 [209.85.167.44])
 by smtp.gmail.com with ESMTPSA id k22sm5135478ljj.85.2020.05.09.16.27.09
 for <linux-riscv@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 09 May 2020 16:27:10 -0700 (PDT)
Received: by mail-lf1-f44.google.com with SMTP id t2so4367075lfc.3
 for <linux-riscv@lists.infradead.org>; Sat, 09 May 2020 16:27:09 -0700 (PDT)
X-Received: by 2002:ac2:418b:: with SMTP id z11mr6301034lfh.30.1589066829592; 
 Sat, 09 May 2020 16:27:09 -0700 (PDT)
MIME-Version: 1.0
References: <mhng-81c83c19-6f5d-4ed1-a0bb-26accf4b7d3a@palmerdabbelt-glaptop1>
In-Reply-To: <mhng-81c83c19-6f5d-4ed1-a0bb-26accf4b7d3a@palmerdabbelt-glaptop1>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Sat, 9 May 2020 16:26:53 -0700
X-Gmail-Original-Message-ID: <CAHk-=win0EVU_GuO=GuJu3Ck0WG1B3+ub-CjncM3B1G9x5d9cw@mail.gmail.com>
Message-ID: <CAHk-=win0EVU_GuO=GuJu3Ck0WG1B3+ub-CjncM3B1G9x5d9cw@mail.gmail.com>
Subject: Re: [GIT PULL] RISC-V Fixes for 5.7-rc5
To: Palmer Dabbelt <palmer@dabbelt.com>, Andreas Schwab <schwab@suse.de>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200509_162716_048833_D445A85A 
X-CRM114-Status: UNSURE (   8.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-riscv@lists.infradead.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, May 8, 2020 at 11:47 AM Palmer Dabbelt <palmer@dabbelt.com> wrote:
>
> * Adding a note to the VDSO so glibc can check the kernel's version without a
>   uname().

Eww.

I realize other architectures do this, but why add it to new architectures?

glibc depending on kernel version is WRONG. It's bogus. You can't do
feature detection based on kernel version, it's fundamentally broken.

So I really would prefer to see glibc fixed not to do that stupid
thing, instead of adding pointless vdso notes to the kernel.

Andreas? Why does glibc care about that ELF note?

              Linus

