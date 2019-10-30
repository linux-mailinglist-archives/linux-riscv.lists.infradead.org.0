Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93BDCE987F
	for <lists+linux-riscv@lfdr.de>; Wed, 30 Oct 2019 09:52:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0j/iD+ckIBUJr3EGIG9/otQpMC+OAOAmiDfFdcINd9s=; b=NUspq1AZSqtHT+
	ZKu4AC7/+afOMOjQh4SCddjUhcG0ZPlTJiDbr2jtBxs4Xk5dQveFgmtJTw1zoef5aYa7xwiR0D7N/
	MEiyEhwFisYHkkOHe+uea43AilfRkZrtf0KhSyXdYi2SzJcFWQ93S2pgsTJaT3c3oHUFTX8gIdUuH
	HhkdUaLt4PowsEvNl/TDIPT+y5mC+NivZRgLsD09CvY4MYlVl9cLPyWFJ0GjuYHfAwWRfvFwmWWVT
	f81fY5uHMUg2Ldru/LsfRMzjsJ1F1zx0zFvQtuJmckVBelI7wbdfJovyQgeEdKNRu1K+CbcV7Zeov
	8aHNzSRhYO/PQmzp+RLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPji3-0007lQ-46; Wed, 30 Oct 2019 08:52:07 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPjho-0007ZD-AR; Wed, 30 Oct 2019 08:51:53 +0000
Received: by mail-oi1-f195.google.com with SMTP id v186so1290442oie.5;
 Wed, 30 Oct 2019 01:51:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mziza5J/MoDupcgI0RkmxCcsKm60Et3F2KLUw+t1RqQ=;
 b=bfN2XgypiTJ7YSnMKgvXsqsoTQNtd8s8D834PllcoXOESduNRfh3ygjssfNNACcW/W
 VWOhGMRJcJKU5XvkEldxqgXO46s+Q7kTsThtOkGeqV0JcvUplnNMXVQ3Cgk4TJmCzODx
 UFdAsUvQ8Sl0LR6aom6tOt8jBs2RxXJ7c7LR8jMyfIBq3mLbWjkQwFuFJKtudSqoG7p3
 dpSx2IgID6LIDIZwJHGxGTPtIVjsZd3icgNImM1s04ldE3n1GndubWv8Hr0ItrZYn6rp
 Hb8AxkOkQqesV4j03R8iHpUt0mOU6IrdoUVVV23B5vB6DxhvlDgx2+3LT3D4gwhx+J/s
 OeKA==
X-Gm-Message-State: APjAAAVR3piavp3DgnBwIbIAiOHg0adnLN2lFikHhZlG3+QXlwi97/NC
 apsHZKBDPmB13vkN/YhBumFoebTwcdbTH3H+Zfw=
X-Google-Smtp-Source: APXvYqywm9C+CpnmelJ6SWQKVIah4mda9qPmB6OrDMq707nGOy+7YzCdX2/qccGqz5HinY9G/c8lSRqxbZE+WID7kSw=
X-Received: by 2002:aca:4ac5:: with SMTP id x188mr4822487oia.148.1572425510897; 
 Wed, 30 Oct 2019 01:51:50 -0700 (PDT)
MIME-Version: 1.0
References: <20191029064834.23438-1-hch@lst.de>
 <20191029064834.23438-14-hch@lst.de>
In-Reply-To: <20191029064834.23438-14-hch@lst.de>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 30 Oct 2019 09:51:39 +0100
Message-ID: <CAMuHMdWGiHhSv=xCqnsUXok7wYG7Wr1EQh+yuPOZBxPCskUFVw@mail.gmail.com>
Subject: Re: [PATCH 13/21] m68k: rename __iounmap and mark it static
To: Christoph Hellwig <hch@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_015152_361825_88944956 
X-CRM114-Status: UNSURE (   9.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: "linux-ia64@vger.kernel.org" <linux-ia64@vger.kernel.org>,
 Linux-sh list <linux-sh@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Guo Ren <guoren@kernel.org>, sparclinux <sparclinux@vger.kernel.org>,
 linux-riscv@lists.infradead.org, Vincent Chen <deanbo422@gmail.com>,
 Linux-Arch <linux-arch@vger.kernel.org>,
 linux-s390 <linux-s390@vger.kernel.org>,
 "open list:QUALCOMM HEXAGON..." <linux-hexagon@vger.kernel.org>,
 the arch/x86 maintainers <x86@kernel.org>,
 arcml <linux-snps-arc@lists.infradead.org>, linux-xtensa@linux-xtensa.org,
 Arnd Bergmann <arnd@arndb.de>, linux-m68k <linux-m68k@lists.linux-m68k.org>,
 Openrisc <openrisc@lists.librecores.org>, Greentime Hu <green.hu@gmail.com>,
 MTD Maling List <linux-mtd@lists.infradead.org>, Guan Xuetao <gxt@pku.edu.cn>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Michal Simek <monstr@monstr.eu>, Parisc List <linux-parisc@vger.kernel.org>,
 linux-mips@vger.kernel.org, alpha <linux-alpha@vger.kernel.org>,
 nios2-dev@lists.rocketboards.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, Oct 29, 2019 at 7:56 AM Christoph Hellwig <hch@lst.de> wrote:
> m68k uses __iounmap as the name for an internal helper that is only
> used for some CPU types.  Mark it static, give it a better name
> and move it around a bit to avoid a forward declaration.
>
> Signed-off-by: Christoph Hellwig <hch@lst.de>

Thanks for the update!

Reviewed-by: Geert Uytterhoeven <geert@linux-m68k.org>
Acked-by: Geert Uytterhoeven <geert@linux-m68k.org>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
