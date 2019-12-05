Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D709114558
	for <lists+linux-riscv@lfdr.de>; Thu,  5 Dec 2019 18:05:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nmiicMy/6M+nsAYismUP6xCcu8kfa7/13Wnrua1z9JQ=; b=K4yp/GtyfWSEWfLLq275FluZ7
	qnWExrfG3wdKYQcnwAHIaCBh+1UWT8MDmEx0QrXgPJOCLpayyAEZ5Aj5RjWYdm+KRKR8Djynv7nWI
	ABSSO9dFz+z4JW8DQvL7l+GjDNCytIcslyRyJwvrSN3yQm/cN2wwd9NhdC8SYNjcIU10Od5442PS8
	zAOg/JlSze8pLthLvbJ+j3hb0asgCUTHXcmvHcWTNVeGSzweVOSsjeEWS7Pu9uQTxgkThhncCJOSC
	kTF8x+oBRXUy3wnWtFlxRps1A/rEIzINyaqvsFGbEJD9AUpbnpk0A7OtC3egSQ+oGusyErmT6aJUb
	MXR0fBlXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icuZF-0006QO-W9; Thu, 05 Dec 2019 17:05:30 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icuZD-0006Pg-A6
 for linux-riscv@lists.infradead.org; Thu, 05 Dec 2019 17:05:28 +0000
Received: by mail-wr1-x442.google.com with SMTP id j42so4484233wrj.12
 for <linux-riscv@lists.infradead.org>; Thu, 05 Dec 2019 09:05:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=nmiicMy/6M+nsAYismUP6xCcu8kfa7/13Wnrua1z9JQ=;
 b=ZyBCIqvHD5Fw3/s1GossAdaOw/98K3zrqYDElXCxBpi4/Iv68AoRrJRRnG7HyBO2lW
 MTWiDEDoFmNklk1lP/I5zIT6bEjood7Bk+G0PlzfzSVPTNkDyuKZxFXBXoxqiYqXtbBr
 2njrE6Br/bHNIpleZjeD41c48Wm/O7MQnua5TsIuspIVxVOJEACbpVFEepSRH8YvuISi
 8/My4nIfSwAGy0BA7RKcgkkpY7cX6cjhLrLT/7QaEa1MstVIUgtC/c+kB1rVjMElb3iI
 D5D+CWD+R+Qe3qia42mRY8QSLu3uqYi/9SjS7DioUpOb0d/eyoulcNdrtTv22qmVb+oh
 o3hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nmiicMy/6M+nsAYismUP6xCcu8kfa7/13Wnrua1z9JQ=;
 b=axQX+R3/RAIjL7DM1NxmUxoWO3an1wz7UT9qOQkwveNFefzQhZkX3UPmheczdtv0LD
 P8ifCBqW1d7pToNidur0hen+L/iY7rrhazq3mvGdux8gudg7AnBZhsziN2VQy+rmcrSQ
 AEoilHwSGlFpRcACAE/1vQt+ePhAm1zoEkJ8VhpeG0d0Oi4np0xEdv4TdaHhEVANXmL8
 PjFA728mv/uoUc7TiqO8kvgD7Lkw1XSb0k+8w39wWzhSuYZVgjiuUO/oFPZ109MX39fJ
 +sHiAoSjz7y+8ioToP3VcppAKg0tp7o3ymiSMuDue2M/PXLuPHxLWhFtQZSAEaEIWyh2
 ALDg==
X-Gm-Message-State: APjAAAURzxWm4oMbNgTtmiH80pZI+YNVezTItp/vrojHp0UH0PAi96SP
 2Dhn2T6XnTzZ/MlzRhfWJattOAuOH4yO3cbiklpffw==
X-Google-Smtp-Source: APXvYqw4k4hAJNrFCSqp5tAxbLz6JAprMFbTtuiQEa4hm28f/i05PdxA4aj5EH1iDs22iFZgxPNrT87oVQSx5niAtW8=
X-Received: by 2002:a5d:4752:: with SMTP id o18mr10964514wrs.330.1575565524767; 
 Thu, 05 Dec 2019 09:05:24 -0800 (PST)
MIME-Version: 1.0
References: <20191205005601.1559-1-anup.patel@wdc.com>
 <alpine.DEB.2.21.9999.1912041859070.215427@viisi.sifive.com>
 <CAAhSdy1RQw3MVcVT5y1EHr72LDNADKRL5nO2E8OrzBi+tpuvtA@mail.gmail.com>
 <alpine.DEB.2.21.9999.1912050900030.218941@viisi.sifive.com>
In-Reply-To: <alpine.DEB.2.21.9999.1912050900030.218941@viisi.sifive.com>
From: Anup Patel <anup@brainfault.org>
Date: Thu, 5 Dec 2019 22:35:13 +0530
Message-ID: <CAAhSdy2ySO_TGL9EYsHnk2p=tceRGaVfogyhthqJEJf-AoOCYw@mail.gmail.com>
Subject: Re: [PATCH] RISC-V: Add debug defconfigs
To: Paul Walmsley <paul.walmsley@sifive.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_090527_352863_3BD42EFB 
X-CRM114-Status: GOOD (  11.59  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Anup Patel <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Atish Patra <Atish.Patra@wdc.com>, Alistair Francis <Alistair.Francis@wdc.com>,
 Palmer Dabbelt <palmer@dabbelt.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Christoph Hellwig <hch@lst.de>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, Dec 5, 2019 at 10:31 PM Paul Walmsley <paul.walmsley@sifive.com> wrote:
>
> On Thu, 5 Dec 2019, Anup Patel wrote:
>
> > I understand that you need DEBUG options for SiFive internal
> > use
>
> [ ... ]
>
> > This is the right time to introduce debug defconfigs so that you can
> > use it for your SiFive internal use
>
> [ ... ]
>
> > and you can find an alternative way to enable DEBUG options for SiFive
> > internal use.
>
> What leads you to conclude that this was done for SiFive internal use?

Why else you need it ?

It is not at all a standard practice to put DEBUG options in defconfigs
across architectures.

Regards,
Anup

