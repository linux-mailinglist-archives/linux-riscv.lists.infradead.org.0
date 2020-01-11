Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DC6B137AD8
	for <lists+linux-riscv@lfdr.de>; Sat, 11 Jan 2020 02:05:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	MIME-Version:References:Message-ID:In-Reply-To:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=oGchJ2QhW6lEKHr0EcwdcOBniXTxW0gJ/C9Tswq1R5g=; b=UHexCHQT/Zygp9ezQ7VrSECny
	fWw0YzpV+ftf/4lzattexb5tIWWzpB1Hn64uqZWx0w7KkXyfZMkTJyyYodCUyzBfo8uLpLJII1zDp
	EB7K4l9CBdl0uOpGjBpVqGhIErb9vG3LhbHAhBC5uPH44f/b3yLgvt01utk1EEBsCG/LGDJwLK9Bn
	1QMG5pnLLchwR7uY1bjbamPeVWxTDAIKxgmO+W8QInKod2O3UPg69rDbosaJzYV50Qz5pA75/oQst
	8Bd/agFTCEaAjOx/oYqd3hhEVShZlnlFe1/aBZkxZ5sjwPK0CYTDw7g00nnMNdei3LVNDjClH62/r
	xcTZXgG9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iq5D6-0003BE-4O; Sat, 11 Jan 2020 01:05:04 +0000
Received: from mail-il1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iq5D2-0002yK-ST
 for linux-riscv@lists.infradead.org; Sat, 11 Jan 2020 01:05:02 +0000
Received: by mail-il1-x143.google.com with SMTP id f10so3238407ils.8
 for <linux-riscv@lists.infradead.org>; Fri, 10 Jan 2020 17:04:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=oGchJ2QhW6lEKHr0EcwdcOBniXTxW0gJ/C9Tswq1R5g=;
 b=jPyxKfrPRhG1+zzESdjIpFwo7eC842EPfR2noA0IPLOvFMzR9A5QTsQO2cTEzmwA1e
 iSpf0VAE/ZA87u7BlrdSz/n4xual1ShORNusYdswkmXhlnLxFhYtzkyiHH3tcBGfzTru
 67jC+toBVemvSLle7d9azKvrwpbdnXCejMG8PlDAfQnHiMJulEhmZw7IXXpRDSYOhVC5
 W74Yi9O++enJJ7nukEqpfna7zY0Q0tlTAoaxjvKkZ3+h8IgZdAeY3V/CJ9s57gEwHCre
 SNhQOAmt+4X+PZNI/ULOOYlbtAwkHJogQbtNDgPAFAQdOCYJH2Llfs58mnVum5OsJBCk
 uv4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=oGchJ2QhW6lEKHr0EcwdcOBniXTxW0gJ/C9Tswq1R5g=;
 b=rSdQKPBYGvi0hw3DC1yfH4VL0/eVBQKQ7wr78GUww3XdQ+5YUOZfvs9NKYe2ZZjyKN
 pS7Oc6XurP5ijTFSP6+uCpy4+yOVvDw0O8i8v3ljO6ec13UpzCjMHfWSKtUDau/qD9mo
 PtmRMTK7smRN5GVn3x8fQTxdK8uHsSKiqpyZABVeOCUTQ7ioUfWWA559P2EpFSXlnlrA
 /uPXjAWauRIFmTI+pK9U/t2U2RrIFCNOPn0Jtk4ub3r6m0apIaEsovxrcBDOMgZpbtes
 FActcbIjWjnQbC+qcuqT4rYqH45gVjMY14zjIP/cfst58YbluyJ5c+quZrwCEvJ4p9fW
 7YkA==
X-Gm-Message-State: APjAAAU25COHepC80Yyv90JoJo3ozBCsVm1ORYV+SyIGeVcNPdWUJHpe
 28HbqfMZzNNH6u0hRYWjmO+DaA==
X-Google-Smtp-Source: APXvYqzopQQofRLrTlQmFON2Y7R+LIl8tdlZalcACPY9NCb/x3as6rU2+Xn7Ke3eGOWVov5gfP96dQ==
X-Received: by 2002:a92:914a:: with SMTP id t71mr5417305ild.293.1578704699180; 
 Fri, 10 Jan 2020 17:04:59 -0800 (PST)
Received: from localhost ([64.62.168.194])
 by smtp.gmail.com with ESMTPSA id b1sm1190156ilc.33.2020.01.10.17.04.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Jan 2020 17:04:58 -0800 (PST)
Date: Fri, 10 Jan 2020 17:04:56 -0800 (PST)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Yash Shah <yash.shah@sifive.com>
Subject: Re: [PATCH] riscv: move sifive_l2_cache.h to include/soc
In-Reply-To: <1578463746-25279-1-git-send-email-yash.shah@sifive.com>
Message-ID: <alpine.DEB.2.21.9999.2001101704440.32308@viisi.sifive.com>
References: <1578463746-25279-1-git-send-email-yash.shah@sifive.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_170500_954653_578248A2 
X-CRM114-Status: UNSURE (   8.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: aou@eecs.berkeley.edu, james.morse@arm.com, linux-kernel@vger.kernel.org,
 rrichter@marvell.com, tony.luck@intel.com, bp@alien8.de, palmer@dabbelt.com,
 linux-riscv@lists.infradead.org, mchehab@kernel.org,
 linux-edac@vger.kernel.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 7 Jan 2020, Yash Shah wrote:

> The commit 9209fb51896f ("riscv: move sifive_l2_cache.c to drivers/soc")
> moves the sifive L2 cache driver to driver/soc. It did not move the
> header file along with the driver. Therefore this patch moves the header
> file to driver/soc
> 
> Signed-off-by: Yash Shah <yash.shah@sifive.com>

Thanks, queued for v5.5-rc.


- Paul

