Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CFF712239
	for <lists+linux-riscv@lfdr.de>; Thu,  2 May 2019 20:57:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t33DcyZ6H18KmjNF/ahmTCNNyCXZgcCAgUKOieFW7Gs=; b=h7QeC9VRzsTihE
	VNsoCWm2CxwrcbIzpghxwmN3H1+GBZRR7ui13RWQ6EWClBKhcyU8u6cV6sbPNo9RmduW7pIJMclYw
	neuJvmPNTnU/IDGSGFegX765Pkz/lYTy4LTjL75cF7VuavBFsfvilwnoPCt9/XZ9kKran7564pP25
	ygWsv4CCe+JoKrc7zIgyD8yrB83ubSXr2t0tuMP8qmY85DSOnHWwNY0PNjKYJCWbDX2UkqESexwZh
	qDC5m29FK3ay+U2s4GAyUMynGhm+Fh/72wm7pK4iBrwu4bediCx9r0rSKT3Wx/eYiIVnLzenKBTOg
	uJ9AYdhrgjF3/h3XRZAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMGta-0007Es-Bx; Thu, 02 May 2019 18:57:26 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMGtW-0007EJ-5o
 for linux-riscv@lists.infradead.org; Thu, 02 May 2019 18:57:24 +0000
Received: by mail-pg1-x543.google.com with SMTP id h1so1480611pgs.2
 for <linux-riscv@lists.infradead.org>; Thu, 02 May 2019 11:57:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=lM2c+tlo6jGaS6GcPDKA87rxkv7bKTgFNvNaS30BO0w=;
 b=TI91P15erL2OywYjQHKmIyJKBc6sPfbma4Qr9Fh0sTkr/TzyaepILFifwYW4g3wWaw
 JuJPUAw4UCajVjqYmP0wxQ4QClyaC1XNagHXWS8h3ToDYO6hg5yh/bnRCdy2zSZpUXIF
 +ZrwD3wVO9CmImJ6Cr65rI0qa09e2fyN1HhuaRJcY8jarKy4cgoU5rDr7ewq9l9WpxVM
 UnfLfaw/exsvG2xp7cpGC3033uhM41JUT8rpyrK/C29Hn+61Jm4tlyynwE0NkdVriH1A
 Pvav5x2WyCk2Er31bwKzupa2n2HetnuU0Cf+9naP7mL/8eBllYDQq7WXm98G685XPEDf
 cTdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=lM2c+tlo6jGaS6GcPDKA87rxkv7bKTgFNvNaS30BO0w=;
 b=LRShRg/OmMxHIGB8I/kacZc95cUbyaAgLBgnbQFzkvaP/3/fdlzfSssJ0n8jN++Xks
 GL/oh13Mm85lWEyzdBExxb+ve5y7i3pfOYflb8OTgQxfk/na1ASZrHdgsNekCRP6ev2A
 Y9Mnq/y4eaLMk/O1yzFaFB2LS7G3ZFp5VJAYgVaMsS7gB/1sPz7vPyG7btiX8JNxrnCv
 aXot4XTwI4YDYZwSDPfhGp2Wv6/uspqWm0f+0CRfdNxeTi5WtBxbjYGFiM7xCRYZOpJ8
 rsjjFBhem24b87kwkTxmwNfG1KlUZjmY3WgnwrV89r7rbTyzu+7CEpGAQ5aCQMwynVpc
 avKA==
X-Gm-Message-State: APjAAAUA8Vh4+i4Towj+sXAghttwJP2StATqFzM6nMkBC7zJb5lE+XTa
 VX88Uy3caqZ8wtBm99yejbJ0zA==
X-Google-Smtp-Source: APXvYqymPePW8yUoH5ZJ85MmB2vDe8cjepG/rf5Xz4mWP/mQIgzpZMZjapJeyzFwZOJiaQm+QroUbA==
X-Received: by 2002:a65:608a:: with SMTP id t10mr5631142pgu.125.1556823440489; 
 Thu, 02 May 2019 11:57:20 -0700 (PDT)
Received: from localhost ([2601:602:9200:a1a5:e50d:c7fa:92aa:c53d])
 by smtp.googlemail.com with ESMTPSA id
 j22sm30688288pfi.139.2019.05.02.11.57.19
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 02 May 2019 11:57:19 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Paul Walmsley <paul.walmsley@sifive.com>
Subject: Re: [PATCH v5 0/2] tty: serial: add DT bindings and serial driver for
 the SiFive FU540 UART
In-Reply-To: <alpine.DEB.2.21.9999.1904191407310.5118@viisi.sifive.com>
References: <20190413020111.23400-1-paul.walmsley@sifive.com>
 <7hmukmew5j.fsf@baylibre.com> <883f3d5f-9b04-1435-30d3-2b48ab7eb76d@wdc.com>
 <7h5zr9dcsi.fsf@baylibre.com> <f2bb876c-2b44-663b-ea06-d849f721fb6c@wdc.com>
 <7htvetbupi.fsf@baylibre.com>
 <alpine.DEB.2.21.9999.1904191407310.5118@viisi.sifive.com>
Date: Thu, 02 May 2019 11:57:18 -0700
Message-ID: <7hsgtwlm5t.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_115722_268578_3D48FE4D 
X-CRM114-Status: UNSURE (   9.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Atish Patra <atish.patra@wdc.com>,
 "linux-serial@vger.kernel.org" <linux-serial@vger.kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Paul Walmsley <paul.walmsley@sifive.com> writes:

> On Fri, 19 Apr 2019, Kevin Hilman wrote:
>
>> Looks like Paul has so far only tested this with BBL + FSBL, so I think
>> I'll wait to hear from him how that setup might be different from using
>> OpenSBI + u-boot.
>
> I'd recommend testing the DT patches with BBL and the open-source FSBL.  
> That's the traditional way of booting RISC-V Linux systems.

OK, but as you know, not the tradiaional way of booting most other linux
systems.  ;)

I'm working on getting RISC-V supported in kernelCI in a fully-automated
way, and I don't currently have the time to add add support for BBL+FSBL
to kernelCI automation tooling, so having u-boot support is the best way
to get support in kernelCI, IMO.

Kevin

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
