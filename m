Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AC5E92122
	for <lists+linux-riscv@lfdr.de>; Mon, 19 Aug 2019 12:16:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NwvCtg4kDGxU3af5GDDl+8y0L4pZ26g5VSQ6FK+2cns=; b=Xz3ELu4/2nYjqt
	lYffXDttyZ8nnoVTuxu9ZuSRzOaCA3DzayjBETJYb4GVt4KkUiwnCDJYHceQ1AUjzyeu1oa5vsJvP
	/34lTy6G4rF1Q6Kr8VUvELa9jwA+lC7uFAPkly0RJSVKzgfyB1kPgZ6VegETxydkeOLZkgumCBLwo
	7xK/G0YI9rn/iAH5pmVaTqxaHHPNcskg9SY8hST2Dirxw1N//b7gjy5OlJv/4EXRrxAYrgqxcHNlN
	GtefRm9xxuXBeWXfUwgZgffQsKYJHwEEthN7hIBNjNQRV4VIJ6lBAg9Xcilf4jt5z4MkZjhfWDa80
	wZZj99An//y4ilrfjm+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzehX-0004Vd-0e; Mon, 19 Aug 2019 10:15:47 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzehQ-0004VI-72
 for linux-riscv@lists.infradead.org; Mon, 19 Aug 2019 10:15:41 +0000
Received: by mail-pg1-x542.google.com with SMTP id l21so952197pgm.3
 for <linux-riscv@lists.infradead.org>; Mon, 19 Aug 2019 03:15:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to
 :cc; bh=dvoZuXsWbX7lGOYq0TI7+TMlH9iF9uBzei6TSIkQpEo=;
 b=i/VaJFb6t3Te0/Ydwxw+vNiDeOkdb+MJcn7TXNKivhdWghXmslO+y9j87467I23K5B
 UEIdHIp5NmCbO2tD0ms4O0rHfC9npZUxAQBJwWN2F1wOvMf78WZozaAhabZwXV8s6gme
 kr0uF3g+rOBACFQwNusHDXx0rDj3zT0uXJuO2ELFMqR9kumQa8+cEsOTnGOXV53mYZ/7
 eJ2P7RVuUV0As1NWdtd6aa9IAu0zjMd8v1DnOmTKmilI2vqiIRgtnAvAf6f2rEF+Owvk
 fvCVxPV5Pf7NZim8ShF9cnEGA62qMbfwPvm4GU1U06dDRlFPtwj++Y8rxmEMd5Gr6Np0
 hCyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:in-reply-to:references:from:date
 :message-id:subject:to:cc;
 bh=dvoZuXsWbX7lGOYq0TI7+TMlH9iF9uBzei6TSIkQpEo=;
 b=GBQo5GI2uBOUCAuqIp6TH9IzOZsoYED2O7EbTWRoFARvOenZDb3M9QvHOxOzmyg81Y
 eWZ23d8rP2EMn+qlRF6bOe4jE62qWwlq18227LNR1gREczXBKtU6zukL+eg54AbXFsws
 NA3TzaZTzK/vU4FCpcsftceNNOlgTuCZI/6jgIZ16qspf9t3sXholHk22eM36wDgkM5g
 1HpsbKnWUn/8VnGxM3oHeSiFNwyN4HUAQZq3Hp1pOHQqihKu+w9WWbBHD8mNXFm8rVxI
 T93Q43SCVXNSNcXTRIb7TDVi7EPwioSfL+jLSmZqdciEH15S/bbsxnb6q5L0N3Vr97ag
 45UA==
X-Gm-Message-State: APjAAAVVjixZDTzyecLd1KCb8cEjquoxrRenUFraRrb/+8SxF0t28qza
 ohkB4ELnzcNDNOX34WX3VsgJ0fe1H78I7CFdvl8=
X-Google-Smtp-Source: APXvYqx5xUj0PgOqdNxe923ijztvKJq0n7kqXgvHNZUnz4s7+1GMnujrSsYL9Fe2veAZjTKScqieSNogP1xZzEeGNWE=
X-Received: by 2002:aa7:8488:: with SMTP id u8mr23776800pfn.229.1566209739353; 
 Mon, 19 Aug 2019 03:15:39 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a17:90a:b296:0:0:0:0 with HTTP; Mon, 19 Aug 2019 03:15:38
 -0700 (PDT)
In-Reply-To: <20190807182316.28013-1-atish.patra@wdc.com>
References: <20190807182316.28013-1-atish.patra@wdc.com>
From: Jacob Lifshay <programmerjake@gmail.com>
Date: Mon, 19 Aug 2019 03:15:38 -0700
Message-ID: <CAC2bXD5JiEmYFQnJK9qr2=PLiXzHw2Ece_g+iMc_B_YAW7e0Eg@mail.gmail.com>
Subject: Re: [v5 PATCH] RISC-V: Fix unsupported isa string info.
To: Atish Patra <atish.patra@wdc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_031540_284563_8AC93C25 
X-CRM114-Status: UNSURE (   7.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (programmerjake[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Anup Patel <anup@brainfault.org>,
 Palmer Dabbelt <palmer@sifive.com>, linux-kernel@vger.kernel.org,
 Johan Hovold <johan@kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 8/7/19, Atish Patra <atish.patra@wdc.com> wrote:
>  		}
>  	}
> +	if (isa[0] != '\0') {
> +		/* Add remainging isa strings */

That should be spelled "remaining"

> +		for (e = isa; *e != '\0'; ++e) {
> +#if !defined(CONFIG_VIRTUALIZATION)
> +			if (e[0] != 'h')
> +#endif
> +				seq_write(f, e, 1);
> +		}
> +	}
>  	seq_puts(f, "\n");

Jacob Lifshay

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
