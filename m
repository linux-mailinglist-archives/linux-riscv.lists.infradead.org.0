Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEDCE1BED2
	for <lists+linux-riscv@lfdr.de>; Mon, 13 May 2019 22:47:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zNa0LY26mYAeLtqpP615fWqbIo6TmXhjxlqjpNc1G0Y=; b=dhZwnOxPD4owfZ
	vNI5GzP6YtN1d4ZdJ/1JhjPE+tq57rIEB8JQDO4fLbbv3ZrD7/wZJlCniU8PF2UGKViuoBlaz5Uq0
	yOVS8LTdVIPuMzc7Jmy61LOwwWlqCwEBlgI4DacMKG/pjQmeUCbT9fKlxiPcXAEr8C2REA+FHTO8S
	B/ANl6iPOrpEEMlHHzQS9LwUw0gf054VR9OuXBy8QSiD3xeqQxdGUAQ0byv3J6A1gyZMyHe76w/Ng
	MaFv7GilKuUvDtMEEt2F8nQNLtsfpEZugA+EoQdUZ2PY1/cWM60ydamcFDHlNFOEuSXiVoLAfhYKu
	WHuE95DfdfBUTFKw076Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQHrL-0000kS-Sj; Mon, 13 May 2019 20:47:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQHrI-0000jh-5p
 for linux-riscv@lists.infradead.org; Mon, 13 May 2019 20:47:42 +0000
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com
 [209.85.160.173])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AFC0B21537
 for <linux-riscv@lists.infradead.org>; Mon, 13 May 2019 20:47:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1557780459;
 bh=A0UdYxon8ghsPmLDQj5qZFdVwXsJWqeY9Whr7tFjVDI=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=2f3v4+R1IeE1rUFpgvOkVrF4S6OmzkYbX8kYvOSidD6Lt59JijaSSajYcsIPPrwQc
 SutE3iblzEFuZ8ox1YQHkH6ZLqWtx1HM8gRGqPL85jKHeqp2CRtW4vsIGI/7JHK+wT
 XX4qOANt3agrHlRSjl7PxC84XVvOinVPSyOZht+c=
Received: by mail-qt1-f173.google.com with SMTP id a17so15201827qth.3
 for <linux-riscv@lists.infradead.org>; Mon, 13 May 2019 13:47:39 -0700 (PDT)
X-Gm-Message-State: APjAAAWdS8VZBLHXHGEElGZM7IZclEhX6XEkzwxk+RJQVvz7qQ/FNApY
 LP35IoABeOcWVugdDl49Z5Eb6hl5IxDokDszHg==
X-Google-Smtp-Source: APXvYqzfpMaBz4WEUO6c/TBlbpArvkHgdVN7DB72QJ7ClwTzINXTCFbJH7nNJY5gdTbVCw+RqbSsGRaTRgk6zSVsNg4=
X-Received: by 2002:a0c:932e:: with SMTP id d43mr18277565qvd.77.1557780458893; 
 Mon, 13 May 2019 13:47:38 -0700 (PDT)
MIME-Version: 1.0
References: <alpine.DEB.2.21.9999.1811211704520.16271@viisi.sifive.com>
In-Reply-To: <alpine.DEB.2.21.9999.1811211704520.16271@viisi.sifive.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Mon, 13 May 2019 15:47:26 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJRdjoTo2hGrKWvcyer18wt9N6w0nkfa9xx_e2xJ6pkYg@mail.gmail.com>
Message-ID: <CAL_JsqJRdjoTo2hGrKWvcyer18wt9N6w0nkfa9xx_e2xJ6pkYg@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: sifive: describe sifive-blocks versioning
To: Paul Walmsley <paul.walmsley@sifive.com>,
 Palmer Dabbelt <palmer@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_134740_646999_C47CEB6B 
X-CRM114-Status: GOOD (  12.93  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Paul Walmsley <paul@pwsan.com>, Wesley Terpstra <wesley@sifive.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Megan Wachs <megan@sifive.com>, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, Nov 21, 2018 at 7:06 PM Paul Walmsley <paul.walmsley@sifive.com> wrote:
>
>
> For IP blocks that are generated from the public, open-source
> sifive-blocks repository, describe the version numbering policy
> that its maintainers intend to use, upon request from Rob
> Herring <robh@kernel.org>.
>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Palmer Dabbelt <palmer@sifive.com>
> Cc: Megan Wachs <megan@sifive.com>
> Cc: Wesley Terpstra <wesley@sifive.com>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: devicetree@vger.kernel.org
> Cc: linux-riscv@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org
> Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
> Signed-off-by: Paul Walmsley <paul@pwsan.com>
> ---
>
> Hi Rob, please let me know if this document works with your
> requirements, or if some changes are needed.  - Paul
>
>  .../sifive/sifive-blocks-ip-versioning.txt    | 38 +++++++++++++++++++
>  1 file changed, 38 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/sifive/sifive-blocks-ip-versioning.txt

I just noticed this was never re-spun and applied. We now have
bindings in tree referring to it though.

Rob

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
