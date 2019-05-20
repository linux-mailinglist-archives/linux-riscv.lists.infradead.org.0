Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0540823BE5
	for <lists+linux-riscv@lfdr.de>; Mon, 20 May 2019 17:20:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V+UlDBB4VNuWRI8Z+hHEwfbrm7q5eaml6wG1+Tbwf5E=; b=KjiQrfBerapXe0
	k8VR5190V/A9DECpm0Wsb5fQS6ccHfBCpi8vT7dQT2bPsKlI5EZ5vqdax1g44hH4qnvTh6M1Di0Y1
	GATdIOZVz12tQMmsjgWYVjobUKJ5VcFQ1E4exLi3UcMmvHC6hZgnYxTVHYfDsmrJf749nmRcZIKOf
	vK6kaVpqlbKwjJSLPFT2eEMLkctlj/vOi68BezlzoHoMLXBgXp92NfiehBjrCN7ck6qqWf3vRIw/T
	DPxsy3vIvO2Tr4o5pP5gzbTgwqFhZklGz2Cq3MjGLKq9uZ/erXqSnFnU4CRFFdFlCFfe0OyaGWVPI
	/QNx9Se6qDThzPN89x5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSk5O-0005Ok-AT; Mon, 20 May 2019 15:20:22 +0000
Received: from mail-ua1-x941.google.com ([2607:f8b0:4864:20::941])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSk5L-0005My-7h
 for linux-riscv@lists.infradead.org; Mon, 20 May 2019 15:20:21 +0000
Received: by mail-ua1-x941.google.com with SMTP id r7so5409956ual.2
 for <linux-riscv@lists.infradead.org>; Mon, 20 May 2019 08:20:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=yPkishA3no+/g/FV605XOJKWtbVRtxVgWtFS2JQZ9bI=;
 b=Kxtt3uvgicFdIlOHphmgzeg6qcwksSg5x8b5fBlKAUoEtJbeq4uW+PNn4F5YAmMzyr
 uqFFhbY+un+kGiRRgCgL8MghZdTl4kLYe1ufn/CfBNiWyoYHwrRGgMA09rA6e9ix2WMk
 9sEpQr8fsWkqi7WNU3NXS9rylbV39+uq3sCw3ZpuGTkms4ijpxsGjO6FyoWtt5OL26EV
 RmgW9ZjVg/r34Cpggv32pOk/8Kik6hQliDvpmui4EcqGKnrIJvH/MCa3VX2Caz4uq/54
 4WGxty5+Ktsb3Z/m30o44gwsWigfGOM1GAh9Sg1WWp3W3R9KO+sG0qNvKHkLME5eVU8M
 MpLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yPkishA3no+/g/FV605XOJKWtbVRtxVgWtFS2JQZ9bI=;
 b=DLvmAHcGwxPzzwpuDxaxsqp/txICzN2YUkyxEnMkiB0gmVfQhHqmERNQv3ghCsUEdR
 hs96q6sV8ty79PJ0wNWv5ISzERZxi6dBTh9x1RO4SDtnPWqeKKc8wx7wMqqECcOvuRgU
 9ZHrOPjfEmGwhWgikGDC99NqQ6kcooyeI3mpNz6KSmRyEPZEfdn1fi2czoZxsP/o1QoV
 COHgIybQ0bpKywT8d1VBlCpWUX6EOoFhpy8gq/agwlme4zfisYbg4EnjwLrBsMlgImye
 QsAYEJTZ5p8nkvACVYxnqYFI+JF7gO0io90AtNvfBN8m0yZ2tnhb9bO6xL3kvfFTEvLb
 uInQ==
X-Gm-Message-State: APjAAAXRYMDFYrsUXnaA6nZc8VST1MAEAT3O+N/ipAIoWonjtIeGLoih
 ekO1QfNrBk8zHTOtfbIv8saFASQxncepeJ+RavQ3Sg==
X-Google-Smtp-Source: APXvYqyUiE88Q5DbYY6MW6gAUlfOMNSWJ4PSpYDD0G5KebJp1+15Ue04rR+q2oWWqyNgk8/ayaSUM7mZwfLYVH9RSRs=
X-Received: by 2002:a9f:2b0c:: with SMTP id p12mr28323739uaj.143.1558365617913; 
 Mon, 20 May 2019 08:20:17 -0700 (PDT)
MIME-Version: 1.0
References: <1558361478-4381-1-git-send-email-sagar.kadam@sifive.com>
 <1558361478-4381-4-git-send-email-sagar.kadam@sifive.com>
 <20190520145216.GD22024@lunn.ch>
In-Reply-To: <20190520145216.GD22024@lunn.ch>
From: Sagar Kadam <sagar.kadam@sifive.com>
Date: Mon, 20 May 2019 20:50:06 +0530
Message-ID: <CAARK3HnG4qg64cc_fjffxGp5EVTLdmWdkMVDx3YvK=coGAuqHw@mail.gmail.com>
Subject: Re: [PATCH v5 3/3] i2c-ocores: sifive: add polling mode workaround
 for FU540-C000 SoC.
To: Andrew Lunn <andrew@lunn.ch>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_082019_425000_78B23975 
X-CRM114-Status: GOOD (  10.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:941 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, peter@korsgaard.com,
 Palmer Dabbelt <palmer@sifive.com>, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, linux-i2c@vger.kernel.org,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, May 20, 2019 at 8:22 PM Andrew Lunn <andrew@lunn.ch> wrote:
>
> On Mon, May 20, 2019 at 07:41:18PM +0530, Sagar Shrikant Kadam wrote:
> > The i2c-ocore driver already has a polling mode interface.But it needs
> > a workaround for FU540 Chipset on HiFive unleashed board (RevA00).
> > There is an erratum in FU540 chip that prevents interrupt driven i2c
> > transfers from working, and also the I2C controller's interrupt bit
> > cannot be cleared if set, due to this the existing i2c polling mode
> > interface added in mainline earlier doesn't work, and CPU stall's
> > infinitely, when-ever i2c transfer is initiated.
> >
> > Ref:previous polling mode support in mainline
> >
> >       commit 69c8c0c0efa8 ("i2c: ocores: add polling interface")
> >
> > The workaround / fix under OCORES_FLAG_BROKEN_IRQ is particularly for
> > FU540-COOO SoC.
> >
> > Signed-off-by: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
>
> Much better, thanks.
My pleasure Andrew.
Appreciate your timely review and response.

>
> Reviewed-by: Andrew Lunn <andrew@lunn.ch>
>
>     Andrew

Thanks,
Sagar

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
