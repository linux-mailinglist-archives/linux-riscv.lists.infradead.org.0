Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D061C16289
	for <lists+linux-riscv@lfdr.de>; Tue,  7 May 2019 13:02:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yrbX5qbTfos9WlmQ1EmAykffiEQp0KOQgBbvRNWAHIg=; b=PvKsjde9cAqlV5
	wF572PVT2FyXxgE6xWLHQc553QcgDVgmpAPEx0aENNlLeap3fWvkqr5x5eP02qYgOPdahqNz5uOm5
	MUDNap3j+tc3G+9/l7WbLlJ6v8OPrFKQTJzf7mDxbl6d3v9RHfi5gvkhfXYuu+CNjuzRKpfQ9XdEf
	M4vMq5FqDnCESxSITbNmqt9upnLX1ouFo1uKUkE7/VMJEVY8G2KjHpOvLiFvjezmIWMuJylzLrgTh
	m06SwEZJ4z8ZPisU8IZLk+S/orj8Tik6kHs/1Gr5VNgXH48tm0eYLR89VkoaoIgRTtTb7gpRz+UKR
	bPwLMOhSDjblKu4C5oOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNxrr-0007pv-Qr; Tue, 07 May 2019 11:02:39 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNxrp-0007pH-5Z
 for linux-riscv@lists.infradead.org; Tue, 07 May 2019 11:02:38 +0000
Received: by mail-lj1-x241.google.com with SMTP id q10so13919598ljc.6
 for <linux-riscv@lists.infradead.org>; Tue, 07 May 2019 04:02:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2EUu6Mnu44He2lWLLhgCEFkjsFkbhrlsReIpHL53zlc=;
 b=UEgMBfHkaLJK9vCowpe3BLuKl5J2UKHObPCuuSv/qaGx2Da93VxAe5Dj1SGZrQfwbY
 8TUgGK1QUznMXwBPdOy7ZThVhp3ERP6K6FnYHQvH3l+U64+pZV9p/xQtv4cvvl3J9222
 CGI0Zs2B8BIs1XC+fYBlOeUj+9PI/FMftXubnu8RBIpZC9vYg3MwCqZkTFD2a8ZhCxVY
 5JSRcOl36cZbnq2eMBMkuXpZDNNGMudPyH8uSnA9H18fl3cKfhaeiM4zAbYbyMKCIDMv
 XhDysh1BugLRHZwI8MHUhR+AQ7akp/rr4mrpuc/MA6KvB160hkprdSRo/Ew9qRUyqouU
 VV1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2EUu6Mnu44He2lWLLhgCEFkjsFkbhrlsReIpHL53zlc=;
 b=kw1QZf/FCdY1mRfi5H75l+XmNw/MoRXQerm5AbUPuf3/KW7inGipd2v3AErC27AV7d
 yKR47KwKFPVOcKEeNG1bZYIiJeb9KUjBg/m1k/UbkjS1MD8e/ag9cBqcGWSSF64/7ToB
 Edzo3iyhh9SpL0yegNn6IGkA3EjxRDgQHqDJzbAss6qloWUzRlrHj6UYMlXSlrLtrbDt
 TnDEommBLqBOOO/sWSrr/7Ev/Sl7pgFjyPOsMnihKqJXyNge60Fxgn/70CrWbFPb7DS2
 W71Wg5YVTlwaziccAdfHUMTvSNI967eeTsZkzacfwN+2Z8S53d2m+p2OZ4auLy5KUpZh
 NGEw==
X-Gm-Message-State: APjAAAXXj7TX3KHF0z4W43n89FksNvy/LoJaH866Khkp7s/DOJ9jQqMQ
 zb9NVwIpGMzmJH1hod1NKRYU8NwF4LYxvlpIleFR665c0yfvJt/rBMgl8eQKSBRLVXB2mv4qGqI
 +z0D8Inp0yUIK0sXVXMXnGsMyoRfL+0afB6Hr4g==
X-Google-Smtp-Source: APXvYqx68N5jhHa7laODn/CQo4UzVADN8Md1na029xCAPAlTBaRQwWHs89c0lpBgg+yKBskHLkfyka0YUBiDmNZdooE=
X-Received: by 2002:a2e:9d0a:: with SMTP id t10mr1967057lji.95.1557226955058; 
 Tue, 07 May 2019 04:02:35 -0700 (PDT)
MIME-Version: 1.0
References: <1553508779-9685-1-git-send-email-yash.shah@sifive.com>
 <mvmbm1zueya.fsf@suse.de> <mvmpnqcsn6u.fsf@suse.de>
 <CAJ2_jOFu-yCZV_A4B48_fLq7h7UA6LUWhgpxr0uuh7vhW9Q8pA@mail.gmail.com>
 <mvmlfzisiwc.fsf@suse.de>
In-Reply-To: <mvmlfzisiwc.fsf@suse.de>
From: Yash Shah <yash.shah@sifive.com>
Date: Tue, 7 May 2019 16:31:58 +0530
Message-ID: <CAJ2_jOG2M03aLBgUOgGjWH9CUxq2aTG97eSX70=UaSbGCMMF_g@mail.gmail.com>
Subject: Re: [PATCH v11 0/2] PWM support for HiFive Unleashed
To: Andreas Schwab <schwab@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_040237_242280_8716608A 
X-CRM114-Status: UNSURE (   9.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, linux-pwm@vger.kernel.org, devicetree@vger.kernel.org,
 Palmer Dabbelt <palmer@sifive.com>, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, Sachin Ghadi <sachin.ghadi@sifive.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Andreas,
On Tue, May 7, 2019 at 3:09 PM Andreas Schwab <schwab@suse.de> wrote:
>
> On Mai 02 2019, Yash Shah <yash.shah@sifive.com> wrote:
>
> > The PWM default output state is high (When duty cycle is 0), So I
> > guess leds will remain on by default.
>
> So that's the bug that needs to be fixed.

Sorry I didn't probably get you before. I now understood the scenario.

Leds on HiFive Unleashed are wired to supply instead of ground.
And as per ./Documentation/devicetree/bindings/leds/leds-pwm.txt, you
need to provide additional property "active-low" in such case.

- active-low : (optional) For PWMs where the LED is wired to supply
rather than ground.

The leds will remain off by default when you add the "active-low"
property under the pwm-leds subnode in your DT file. So, this isn't a
bug in the driver code.
For DT file change, you may refer
https://github.com/yashshah7/riscv-linux/commit/dd55057a26150e50525643a423b20e07b72617b5

Can you test this at your end and confirm?

- Yash
>
> Andreas.
>
> --
> Andreas Schwab, SUSE Labs, schwab@suse.de
> GPG Key fingerprint = 0196 BAD8 1CE9 1970 F4BE  1748 E4D4 88E3 0EEA B9D7
> "And now for something completely different."

-- 
The information transmitted is intended only for the person or entity to 
which it is addressed and may contain confidential and/or privileged 
material. If you are not the intended recipient of this message please do 
not read, copy, use or disclose this communication and notify the sender 
immediately. It should be noted that any review, retransmission, 
dissemination or other use of, or taking action or reliance upon, this 
information by persons or entities other than the intended recipient is 
prohibited.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
