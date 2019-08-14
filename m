Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 760E18C5B9
	for <lists+linux-riscv@lfdr.de>; Wed, 14 Aug 2019 03:56:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LIjWtsomIdJOeWxaYUrrHUwyQQUPW3cHB+J0xPGcn7o=; b=UWx4xsfXqlLY0r
	xUKAmwpJy3yyBg7djGLIagBxzrWMEVvXYwhQu4YkUVrkDxG9NLkjZKtZGK1Th6eVTYzciPd8Fno//
	SxH/BSB0EiDKpp5ly8lcumt6yXr79B6uS29JYcMSSPBgWXmoUaVqnZViEDvohRKXWVoCPeHl1LqoT
	sZWqdQYLwrIzpZplJGS94qevxPZ+ufSgm+/TYYLtgmhSHo28OthX6Pv+zmCSHEcYuWcape4F/ZhBK
	fWekj3DO1JPT0dugCi2JyOlwa0b/lLkH57K5Z5efze121M+RK3Zu41ZEcIArvkwEPj64dGIDQEuCC
	nFHkO0AHMIe21U0yu9Zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxiWD-0002nr-9r; Wed, 14 Aug 2019 01:56:05 +0000
Received: from mail-ot1-x329.google.com ([2607:f8b0:4864:20::329])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxiW9-0002nX-7c
 for linux-riscv@lists.infradead.org; Wed, 14 Aug 2019 01:56:02 +0000
Received: by mail-ot1-x329.google.com with SMTP id j7so34002389ota.9
 for <linux-riscv@lists.infradead.org>; Tue, 13 Aug 2019 18:56:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=XLHNhXfk5bsRqPD+tbhogFAW5bK2pPgzyn15UpRBUkA=;
 b=fCArUvFeqf++8XO7TL2SswY5UdvHzBj1/FROxkxlZ4gjI9j6i60nmJUSfvkTbAa505
 v72La5COWkibK06TGDURqOdAvnmHX9p8WxlIHqxbc7DM6q0gQunp5dlPdc1Hddbei5zJ
 gPHFjXH9zsm2F374EDm4cKIdApk3dVMntGiEKEbIS2gi2g02RRxMZsx+W6ca2yTsCXsq
 2ZoE/Kjmhfr10bheznVwOH+bUxu87VPW7S0D05udOIWuKSJ6oZ45o7yYV6vGViEtX2xe
 uu6mweL8dnKbvMNbRwobZykgf9495HD5OI0GwH4f74B3oFBQpWHpJcFs6S1o30PAbvxQ
 +inA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XLHNhXfk5bsRqPD+tbhogFAW5bK2pPgzyn15UpRBUkA=;
 b=gZhsb1Qmfk0eugfyYduQJsugTLBN8auALc+j0CTtoh+b+y8hhv6uLoN+9QdiiNEfQw
 tDvqPTRxwgpdezjBTbNXymTP63ZWfDCyXfTsD07HoV1caSfB4l7j10sb0OiqJ8AQZpJC
 9jAJdb/qRF4Flf+QaBTEbKHQg/hRybY+Wcp3SGTRkhjoY5UEg6CeC6BcJ/CTeKjF90hN
 gEUktougH29l6n7TNRDgSQr4UFDeyaCvZA2qmu2gb1HY8ENTlqG5SGkLIIeyhQ6/p3et
 maffdB/4H7/Eg+LUCaCia62InC7rjgaMdrsdqecF/AnPlZiFteOuSHiNm0eOsQLhSX/B
 Bjzw==
X-Gm-Message-State: APjAAAUcitOJZYYwGW7C7Imog0uoYh19qQWLDtJNokrpvY9sIF+N3Jxt
 lnv9AM2zOZEctsgXR1iVSgF5vhsfRP+XHp5zQpdfDA==
X-Google-Smtp-Source: APXvYqyexNUdayXG5IEwU/3HPkWVsx7m78gh6YUok7JltEj/ZhFTHF7Z1gqMJZTFLZPg+Esh9tAgAEE9qGueqYuuTnE=
X-Received: by 2002:a5d:91d7:: with SMTP id k23mr32438898ior.163.1565747760317; 
 Tue, 13 Aug 2019 18:56:00 -0700 (PDT)
MIME-Version: 1.0
References: <1565251121-28490-1-git-send-email-vincent.chen@sifive.com>
 <1565251121-28490-3-git-send-email-vincent.chen@sifive.com>
 <20190812145928.GE26897@infradead.org>
In-Reply-To: <20190812145928.GE26897@infradead.org>
From: Vincent Chen <vincent.chen@sifive.com>
Date: Wed, 14 Aug 2019 09:55:49 +0800
Message-ID: <CABvJ_xiwDrOE1yCsBWe6qF=WU1pgi=kE8+GHfar-q+Tov0vYpQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] riscv: Make __fstate_clean() can work correctly.
To: Christoph Hellwig <hch@infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_185601_286177_802F8D65 
X-CRM114-Status: UNSURE (   8.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:329 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-riscv <linux-riscv@lists.infradead.org>,
 Palmer Dabbelt <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Albert Ou <aou@eecs.berkeley.edu>, Paul Walmsley <paul.walmsley@sifive.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, Aug 12, 2019 at 10:59 PM Christoph Hellwig <hch@infradead.org> wrote:
>
> Maybe s/can //g in the subject?
>
> > +     regs->sstatus = (regs->sstatus & ~(SR_FS)) | SR_FS_CLEAN;
>
> No need for the inner braces here either.
OK, I will remove them.

>
> Otherwise:
>
> Reviewed-by: Christoph Hellwig <hch@lst.de>

Thanks for your comments

Regards,
Vincent Chen

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
