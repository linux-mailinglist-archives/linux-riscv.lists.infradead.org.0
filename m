Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67F58145FD8
	for <lists+linux-riscv@lfdr.de>; Thu, 23 Jan 2020 01:22:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:References:
	In-Reply-To:To:Subject:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UAm+y673BEPrHXldf2cTkx9EiCWchkK86gahuOo9dk8=; b=IR/LdjaCO2vvbg
	a/CinpFlyLB992Ok8S8MFce/p1rVQxdzimkPUIgZIG0irlXxW2qkinENgSZr27puwHm/K7gT/p5D2
	hBhwH1CVloYHQgru+PNdsnZmGZA3B5A8DPwFAUlH0FEbpDfMRiUMNvVYwPF0iBXiqUh7zDfLL750W
	cNfSiQmleLvNxAb7klONKCXWgJ+uWBBU26OGtfF7VktTB8WY5gcNoMmEJnoLBpJ3ZC4ASTm2Hh6Dg
	tBjZi0j/oEGuX9o510KJv48BlA5nQN6fpSXg8q9KM4Vb1bW6hK2q2Xiy3+tFsUFit0akLOURtJHIU
	zbTnPq9BsOSgvG74U1pA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuQGY-0008Q7-Pa; Thu, 23 Jan 2020 00:22:34 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuQGV-0008Pf-04
 for linux-riscv@lists.infradead.org; Thu, 23 Jan 2020 00:22:32 +0000
Received: by mail-pj1-x1042.google.com with SMTP id d5so327531pjz.5
 for <linux-riscv@lists.infradead.org>; Wed, 22 Jan 2020 16:22:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:subject:cc:to:in-reply-to:references:message-id
 :mime-version:content-transfer-encoding;
 bh=UAm+y673BEPrHXldf2cTkx9EiCWchkK86gahuOo9dk8=;
 b=Gqq0t7c92u8Zn8crwvApOUsfht3cORZv7uVMYRvrtTIgWsm23Net97AVNClAcOkmmB
 pxqGhUp0ZYwu1u7hel7fdiadtQOUCuDIxGH7sjYeVOV+SaeLJY0jUh94/2JgvJqPJTtp
 jPuJ6Leh4h8sRMpi7JGtMxxhmpL0ySPNaGJ52/Vk4UeDZjpRUmlIxU3a1KM6ZiRVyEie
 KeRRkSy4qzpFfH5rytbA8QAb+12ZuybdunJ2zFVkuk051N5+XKRI/PJc5NtiRqMgZsUO
 fy+WE2zUY4svBIjixpgXQeinZSsRNVV6YR2+eeHsXgBXUqk4iQ5Ewog33ZCx0qqjNtze
 lpfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:subject:cc:to:in-reply-to:references
 :message-id:mime-version:content-transfer-encoding;
 bh=UAm+y673BEPrHXldf2cTkx9EiCWchkK86gahuOo9dk8=;
 b=l62j/D50lhYddGrsr+IHtFm7FXPqPPcqlopkda+DnYN1uOSv9P5LeiWbISgQCCWq1s
 MMYmL9sSs8DgfFVqHfhtmeZX3Iub6jKtGOGWznDo/Hj2UPzjw0XRfnv0PLzya0Uas7If
 Pbvp5QGSCj+2F61XOPPobi43ZdoDEIf1QLt5+HqJvCh6vRwaOilgEs+g1sTo9XuSGeti
 U6jqlCEBJXN6eDlb2SuQzpV2C0aOdoq3Sfr6Xsif6z/HSuYvd1k43gMb8pFItJrvEvg8
 Mh53XLctabQ9JHh1LJNkchj1SxEUQlbKxX4tNNc1Mbj5qkVIJU24H+n0PkqpeKW3t+dH
 eoSg==
X-Gm-Message-State: APjAAAWygQ9XXmWW6mZ+1/9Z/xElQ0QOU8ImodyYdQCAb8+w+3F8vPch
 rk+aQqTRh2JFEpQAc7DB2DwgCw==
X-Google-Smtp-Source: APXvYqx2V97ZyPLOxzNfRyOlfnGOYECZDnsr0TDNwoPNFUjkpuaMeWSR8pcnWnTvlQo3qPZ0SwQMdw==
X-Received: by 2002:a17:90b:8ce:: with SMTP id
 ds14mr1301887pjb.57.1579738949984; 
 Wed, 22 Jan 2020 16:22:29 -0800 (PST)
Received: from localhost ([2620:0:1000:2514:7f69:cd98:a2a2:a03d])
 by smtp.gmail.com with ESMTPSA id p18sm4086431pjo.3.2020.01.22.16.22.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Jan 2020 16:22:29 -0800 (PST)
Date: Wed, 22 Jan 2020 16:22:29 -0800 (PST)
X-Google-Original-Date: Wed, 22 Jan 2020 16:21:35 PST (-0800)
From: Palmer Dabbelt <palmerdabbelt@google.com>
X-Google-Original-From: Palmer Dabbelt <palmer@dabbelt.com>
Subject: Re: [PATCH] riscv: change CSR M/S defines to use "X" for prefix
To: Olof Johansson <olof@lixom.net>
In-Reply-To: <alpine.DEB.2.21.9999.2001070314050.75790@viisi.sifive.com>
References: <alpine.DEB.2.21.9999.2001070314050.75790@viisi.sifive.com>
 <20191218170603.58256-1-olof@lixom.net>
 <alpine.DEB.2.21.9999.2001031723310.283180@viisi.sifive.com>
 <CAOesGMir810kVTDyoTFuhK-PdFe4J2u2VM+L8jOdO8DghAELQg@mail.gmail.com>
Message-ID: <mhng-55d1f282-e2ee-4ff3-b2c0-1701d175b426@palmerdabbelt-glaptop>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_162231_064217_553954F6 
X-CRM114-Status: GOOD (  15.41  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Damien Le Moal <Damien.LeMoal@wdc.com>, aou@eecs.berkeley.edu,
 jason@lakedaemon.net, maz@kernel.org, daniel.lezcano@linaro.org,
 linux-kernel@vger.kernel.org, Christoph Hellwig <hch@lst.de>,
 Paul Walmsley <paul.walmsley@sifive.com>, tglx@linutronix.de,
 linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 07 Jan 2020 03:15:56 PST (-0800), Paul Walmsley wrote:
> On Fri, 3 Jan 2020, Olof Johansson wrote:
>
>> Sure, this does the job. I'd personally prefer consistent prefixes but
>> that's just bikeshed color preferences -- this is fine.
>
> Thanks for the ack.  For what it's worth, we're in agreement that we
> should prophylactically place RV_ prefixes on the rest of the CSR_ macro
> names.  I just would prefer that it's done outside the late -rc series,
> since it's not technically a fix.

Olof: are you going to send a v2 of this patch that converts everything else
over or do you want me to?  I think we all agree it's the right way to go, Paul
was just trying to limit the scope of the change late in the RC cycle.  I'd
like to get this on for-next sooner rather than later as it'll probably
conflict with everything.

>> (Builds are still failing for some configs, but will be fixed if/when
>> you pick up https://lore.kernel.org/linux-riscv/20191217040631.91886-1-olof@lixom.net/)
>
> That one is on my radar - just haven't had a chance to review/test it
> yet.  Thanks for sending that one too!
>
>
> - Paul

