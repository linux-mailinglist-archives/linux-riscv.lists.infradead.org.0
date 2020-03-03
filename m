Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C1B1176E28
	for <lists+linux-riscv@lfdr.de>; Tue,  3 Mar 2020 05:47:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UFYxSZrni6CvNffGhjXolw+msCaYdHC1D/0ujqewWaU=; b=ikIVj8hWY95khJueDaR2cp7gl
	ay0VDXSLX9fVgFACWAPzSd5yifhNejWhh7/P99vqIqr9jsGkNXuFxaX/+2gOZEyb8LefNbE+csIy6
	M3BsQPoGUjeis3tB0pHTMX3Zbkj2MZhhDzRFEzlPqcdgAZ7L+kmaKqo4iBs+CfVPoFnW4s2c/0fUT
	WMXPuRi+wJs6F/bfwmnuBUenh7uowfxX4DhAGs9RE7lri2gcrZNorgJ6dkz5cDKv+ao1D+JpG7arZ
	wDQ5bQxy15d1xkbeYInjsAEkOsoD2lEiwVOLTMhnLpcxRns29G9n8KVRBrPwIDmuNQz8MnoOOpmqI
	4S+kWYD6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8zSF-0000nE-Q9; Tue, 03 Mar 2020 04:46:51 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8zSC-0000mn-Su
 for linux-riscv@lists.infradead.org; Tue, 03 Mar 2020 04:46:50 +0000
Received: by mail-pg1-x544.google.com with SMTP id m5so939068pgg.0
 for <linux-riscv@lists.infradead.org>; Mon, 02 Mar 2020 20:46:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=UFYxSZrni6CvNffGhjXolw+msCaYdHC1D/0ujqewWaU=;
 b=EHIAT/zU9e9bsS5E6eozCM31t5B2bkWmjLdU6kV8nbjDVj9mzBeGrUU9NPASBuDm4T
 G6Darqnz0AcNltKumEoIANitAHpB3Jh3/pV6iuzjIT9BeS/4LcvF1GdDnqupXSHncm4G
 8ByPerSV7B0QEeileoYqy+e8w11f06FmL2KU8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=UFYxSZrni6CvNffGhjXolw+msCaYdHC1D/0ujqewWaU=;
 b=KFrNi2mmwdjEjk4Yj3XRnpI1qpZYgKBpT3gDS+K8xGGJ2RzcWslSF34WL0HEo4a+eI
 Qk1rzeg27u3O/j/N7qpmGnYoGtRTTlmZ4XEODs+K6znK+z1NA9qedA1KcRLyvezZoueh
 XBZzX2AyNJ0HDu5uW7SpG0mg/4xv/0YHpZc2YXkcmkJRtVcNu70+oH7FhuPBm6LR/elH
 RffVRAcPGPVTBk69umWWsAEvlg0GATNDB5I7LlvS2zlNu2lpMKzLyOV/CgbEUbJtkfhf
 04KedWNY6pJEfn8/sSi5xYEg3z4d14PkcSHa5LkmA2XxCb8Qak6w8rsCoRbisG9gttRf
 Cjfw==
X-Gm-Message-State: ANhLgQ1IyNeN81ahbDGyMWsNO4NJQpB1UbybiSu3b8p5yjOOe2JPttjG
 FFid7beL7AOiBAT0WkDeb7psng==
X-Google-Smtp-Source: ADFU+vu/TNvNc0FLRpHo+HDfp6KHd1XVEFDDJc21QkTufe7swPXY9rij6UOEsPoMuIJqL2GUKMScZg==
X-Received: by 2002:a63:114a:: with SMTP id 10mr2265128pgr.185.1583210808160; 
 Mon, 02 Mar 2020 20:46:48 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id r1sm879527pgh.84.2020.03.02.20.46.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Mar 2020 20:46:47 -0800 (PST)
Date: Mon, 2 Mar 2020 20:46:46 -0800
From: Kees Cook <keescook@chromium.org>
To: Paul Walmsley <paul.walmsley@sifive.com>
Subject: Re: [PATCH] riscv: fix seccomp reject syscall code path
Message-ID: <202003022042.2A99B9B0@keescook>
References: <20200208151817.12383-1-tycho@tycho.ws>
 <20200223171757.GB22040@cisco>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200223171757.GB22040@cisco>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_204648_956886_E0AB86BB 
X-CRM114-Status: UNSURE (   8.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Tycho Andersen <tycho@tycho.ws>, Albert Ou <aou@eecs.berkeley.edu>,
 David Abdurachmanov <david.abdurachmanov@gmail.com>,
 linux-kernel@vger.kernel.org, Oleg Nesterov <oleg@redhat.com>,
 Andy Lutomirski <luto@amacapital.net>,
 Keith Packard <keith.packard@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sun, Feb 23, 2020 at 10:17:57AM -0700, Tycho Andersen wrote:
> On Sat, Feb 08, 2020 at 08:18:17AM -0700, Tycho Andersen wrote:
> > ...
> 
> Ping, any risc-v people have thoughts on this?
> 
> Tycho

Re-ping. :) Can someone please pick this up? Original patch here:
https://lore.kernel.org/lkml/20200208151817.12383-1-tycho@tycho.ws/

-- 
Kees Cook

