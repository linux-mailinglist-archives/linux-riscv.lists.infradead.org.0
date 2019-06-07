Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A415383B8
	for <lists+linux-riscv@lfdr.de>; Fri,  7 Jun 2019 07:24:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S4dYywUQMt3Zt/Oso7NR32ZaVNbbJ697SsxOwNu3Zpw=; b=NPAkkzqglcFT0u
	kiKfEJRBmMyhg7S+bpPi2YJcgcLq1BbQpUc8dG17de86z8xtlsfYdbYRSHRIBMjIaSEURL3gw5OPW
	004crauqptjyHHC6YtGONu49kePRnrDNjBAhA8rNgyJwK1sGl6sS7QhxAdS+tcrKaa+y7rw8/Mkuq
	IiWxaWp0G3XUNsNq4BDlbqJMesObUSpkFaW4197RKwL7aQh5NVpLEz4eeurVuqoB04FyOeMhh747J
	X9Z7zZjbaNpS8llxHtYJxGfAgWMMuljxantU4Y5SXnQmFfiFJqzD5Y5HuppYPwPWAlX48YZ4uV/QD
	SfcWhLoed5QrX3RHplhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZ7Mm-0006iZ-FO; Fri, 07 Jun 2019 05:24:40 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZ7Mj-0006hs-1w
 for linux-riscv@lists.infradead.org; Fri, 07 Jun 2019 05:24:38 +0000
Received: by mail-pl1-x641.google.com with SMTP id g9so361233plm.6
 for <linux-riscv@lists.infradead.org>; Thu, 06 Jun 2019 22:24:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=wqe6kl8DbEpNzk+gxBdngVVPGBYURaHyfgLLC4qaii0=;
 b=Z8ebDry0731Ww7qRvJu1pqbm3GJ+szf2+j7eytajaqJtwAmW3D6btMQIC9TE6+64jo
 O+/0zIVJSEEkB0+07WKzaru0XazGerN1yQ9YckR5JZUneUhZIFdtEbAnT7tC7DvMpJKJ
 rpQFIFw6hao9QHiivNPi/3R/tftDhjPcTDJ1N7wOsNPKGhUmguPFRRG9J1gM/spcEeXV
 qIZEhuP55biu4fwH99gVGj7NKohBhWO26CnMlm8NVHmCypHSY+A9TCeJylTpXyV6YY6X
 IJ8lwnD03PZ7c65ptZXQcHsUXprO4wtMuHRCQcZBRQ8U7A10xh2EIzznYo7A9WKotKJr
 sD5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=wqe6kl8DbEpNzk+gxBdngVVPGBYURaHyfgLLC4qaii0=;
 b=aiLMCuGR535+OgazRSNOe7sDvGKlVt8RT4RpWA/bo8DKOZb7OqWeKuQxLS35hpZbe9
 HfWvJf51Wj/wf6EFxUGSpk7OtwAyQXNopxNcjMZyiKYhwLc+WV6VNwcNM9tSPMi5Ku/d
 R9I1zrf1hJQkSiVZXbp40RiymoeUbn5VG64NC48QBwDvWRsnluySVLfASWE21WbOBsMN
 4eBpaU0hiEN1QVePFwm4f8DxhTZ6Q7FDM8VwxxDmgKRWngW0t+nNd847jts6z6l0DzBz
 ub5n3FExWmdEMGQxVa4CbQA6SBDHmX5r5ebMzgcnmh9O2CFCWubzg61grI/VJdHCs8Oi
 flhA==
X-Gm-Message-State: APjAAAVPWQ8ZiV9+ldlb9SMyIRBzMY8FZRP6lemVe+Q4jTuHboH+Nwqu
 +l99PHBk56dEYQPvs6PTyIrpXQ==
X-Google-Smtp-Source: APXvYqzQFNiED7FnxJJgBrM9ljjzZaPd8GsA5Es9uz10QhQqODIm1yA+jRKiFrpyJIhkn2S/CAFDyQ==
X-Received: by 2002:a17:902:9a84:: with SMTP id
 w4mr54404661plp.241.1559885076185; 
 Thu, 06 Jun 2019 22:24:36 -0700 (PDT)
Received: from localhost ([14.141.105.52])
 by smtp.gmail.com with ESMTPSA id t187sm881078pfb.64.2019.06.06.22.24.35
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 06 Jun 2019 22:24:35 -0700 (PDT)
Date: Thu, 6 Jun 2019 22:24:33 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Kevin Hilman <khilman@baylibre.com>, devicetree@vger.kernel.org, 
 robh@kernel.org, mark.rutland@arm.com
Subject: Re: Patches for v5.2-rc and v5.3 merge window
In-Reply-To: <7hr288exi7.fsf@baylibre.com>
Message-ID: <alpine.DEB.2.21.9999.1906062219490.28147@viisi.sifive.com>
References: <alpine.DEB.2.21.9999.1905201019010.15580@viisi.sifive.com>
 <7hr288exi7.fsf@baylibre.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_222437_107597_AA9F042F 
X-CRM114-Status: UNSURE (   9.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [14.141.105.52 listed in dnsbl.sorbs.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Atish Patra <atish.patra@wdc.com>, linux-riscv@lists.infradead.org,
 palmer@sifive.com, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

+ Rob, devicetree@, Mark

On Wed, 5 Jun 2019, Kevin Hilman wrote:

> Paul Walmsley <paul.walmsley@sifive.com> writes:
> 
> > Palmer has asked me to collect patches for the v5.2-rc releases and v5.3 
> > merge window, so I'll be doing so.  This is just a heads-up so no one is 
> > surprised to see 'patch queued' responses from me.
> 
> Speaking of v5.2-rc, any chance your DT series will make it for v5.2?

Ideally it would be nice to get acks from the DT folks first for:

https://lore.kernel.org/linux-riscv/20190602080500.31700-3-paul.walmsley@sifive.com/T/#u

https://lore.kernel.org/linux-riscv/20190602080500.31700-4-paul.walmsley@sifive.com/T/#u

If those come soon, I'd be fine with submitting them for v5.2-rc.  But if 
that stretches much further into the v5.2-rc series, it seems best to 
schedule it for v5.3.


> I'm hoping to have upstream v5.2 ready for testing in kernelCI, and
> that's one of the last missing pieces.  I just tested it on v5.2-rc3 and
> it's working great with mainline u-boot.

OK, great.  Thanks again for your testing help.


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
