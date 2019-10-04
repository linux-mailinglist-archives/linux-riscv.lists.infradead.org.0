Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17539CC1CC
	for <lists+linux-riscv@lfdr.de>; Fri,  4 Oct 2019 19:35:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EgdoA1H0woyR2VFme0ZALEcU+hPZyQuc9VRyInlL2z4=; b=DkzXJ45r5Ojh7k
	WDjYtsKBpHbN5Og4Lgyz11B7jPO3ISftDlPD8S65Ju3ElrSNnhNkvlSalRMXk1YKuH1fevlsbjHpp
	Cc5l/p/IMOPRsx9yUHX3QCnjDVVw5zTYEy+2T9wMxrPjL2V8kySuQrAj4R6a4hI/4PN3H51EGXKwx
	amSmkLgZ4wHpItTHhHm8BHyk+vWSWHkZAGqhx6srHuG5x0L+lYJYOQvNjamhLELKHb2LRl3FSAuNj
	lihdKayw+g+f6tVWAqFacLwQGyCKMCcFXzRnKFUNgDGWn6cw85EchYgAF3EM2eWGSxJji94RLeF64
	QbrTORbhzBFiurh9lxbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGRUa-0008Pt-Uy; Fri, 04 Oct 2019 17:35:48 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGRUY-0008PV-1o
 for linux-riscv@lists.infradead.org; Fri, 04 Oct 2019 17:35:47 +0000
Received: by mail-io1-xd41.google.com with SMTP id u8so15294311iom.5
 for <linux-riscv@lists.infradead.org>; Fri, 04 Oct 2019 10:35:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=oovUconFoZBqNagUNSlVfZVpfIZyDqPDT/CS6h4yspg=;
 b=R8tPzBVIbwYLF10JXGaRyqUSriMYzhv7spR40ceRqO4WuChwvefLVAWFpRT4np59+b
 j+UGpiP33B6BJRwp3hjm4sKp7obvptYCvBaGlLL3I6gGawFLujuEiwq9EbHLm8YWOUiO
 f1M0GhgQ73gdfhg9WM8bhULqg4DQmAnjT3UmGwbyfsBLNU5ZpyHpp73HRa3PImj/+0Qa
 mEVsU4ckdYRg1hlgrujJjaHkVJ082g7/z2qHK+nXBVfYpkXr/rq1R4kk0OraheeJ3LNs
 RjhBn67cYrrrwYfFvrkFdfaEZeApElHzUsZfa39SnlDL7ImWf6t0V8DgJD7nvbXyGoy/
 yqIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=oovUconFoZBqNagUNSlVfZVpfIZyDqPDT/CS6h4yspg=;
 b=l/o2KZfVPyvj1xkU3CtLTQ9SSGPmh3NyNzRagY52nLZOfNcy+xssfMgvJsJYLha2AF
 Soeh3KoaTe/Fr5aod8t2PvjrVg8lEHkfBrvKmiiWupklkFHxPDxhuBqEpxdoQAPFETK/
 ukxE6vDMxNlyj60p9BY+MUFzLy2SZtZ5NXV+DX/qgjKYME/XHqjJUrkGRdwPKvVhQsJG
 5WPG3dmW/I2uOfcI4QY/CEazc9URC+jT98ug0Q4Fk+4eMvlMcoJj7tTEo9jmzSTI0fYy
 kborGiGqEQz5JljfpDoHrM6dnaxEe2TEBiJGJSzJLtdjPhg5aqg0DKR0Qh90qP/deYXq
 KCpA==
X-Gm-Message-State: APjAAAVKNKpLBkD9mz41Q6mxAL9XH1JtXkd8cOciFQN392wql32PYZUn
 b3sExP920G+v/qZi7R0O9CU/Ug==
X-Google-Smtp-Source: APXvYqxvYn72ktE7CKz9uGGXhGnh/KTLFuWKIMA57WzZfBVVSihoHoDE+6U4DPpck5tJO94CnT1h3w==
X-Received: by 2002:a92:8347:: with SMTP id f68mr16680035ild.216.1570210545382; 
 Fri, 04 Oct 2019 10:35:45 -0700 (PDT)
Received: from localhost (67-0-10-3.albq.qwest.net. [67.0.10.3])
 by smtp.gmail.com with ESMTPSA id p81sm3621162ilk.86.2019.10.04.10.35.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Oct 2019 10:35:44 -0700 (PDT)
Date: Fri, 4 Oct 2019 10:35:44 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Palmer Dabbelt <palmer@sifive.com>
Subject: Re: [PATCH] RISC-V: Clear load reservations while restoring hart
 contexts
In-Reply-To: <20190925001556.12827-1-palmer@sifive.com>
Message-ID: <alpine.DEB.2.21.9999.1910041035340.15827@viisi.sifive.com>
References: <20190925001556.12827-1-palmer@sifive.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_103546_095642_2D514553 
X-CRM114-Status: UNSURE (   6.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, me@carlosedp.com, linux-kernel@vger.kernel.org,
 joel@sing.id.au, linux-riscv@lists.infradead.org, marco@decred.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 24 Sep 2019, Palmer Dabbelt wrote:

> This is almost entirely a comment.  The bug is unlikely to manifest on
> existing hardware because there is a timeout on load reservations, but
> manifests on QEMU because there is no timeout.
> 
> Signed-off-by: Palmer Dabbelt <palmer@sifive.com>

Thanks, queued for v5.4-rc.


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
