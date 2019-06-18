Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28FDC49D63
	for <lists+linux-riscv@lfdr.de>; Tue, 18 Jun 2019 11:33:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PYQlkvbAmVZyuaYSkYraRnpN9U/Phqds69nC2LaCg7k=; b=n48iR0BcvlZYgD
	rIMF/KRQSEVG1Qx8YY4KPPN9tJINCjG56l7//INJyEgU84MRAG/iy2D1N0M7cDBg1NjQjlg70TWQZ
	2XvptrcsAdptdcaAMqEOy8QgAxooPyILqEMD1DFQWNYm+Dwg9KpnowPmajkicGBpqQYA+tPSqTqaL
	mh+dKZM1ULMlGeUboqu7naUMciONzZZCZWiOL6UYxBV0366qUQb+/LwaMUWL6uZL9G7VJRenDObHb
	dCZkvzcQgDvTrhESXtpWudR1jEHSSgGie4/uE/ufPiHX2Mz2sqTYwCWOT9EO5WI2sdg2PRg5jZHao
	X33hDCj44QDXzOLlJ7Xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdAU9-0004EV-Hb; Tue, 18 Jun 2019 09:33:01 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdAU6-0004D6-Fe
 for linux-riscv@lists.infradead.org; Tue, 18 Jun 2019 09:33:00 +0000
Received: by mail-wr1-x442.google.com with SMTP id m3so13164742wrv.2
 for <linux-riscv@lists.infradead.org>; Tue, 18 Jun 2019 02:32:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=6krmeNN+08w4aZmGNN3h+dlYsILeKrK5WU7Jp0wdoWs=;
 b=NdnjhosXFrDiWKVkMzKrfuNnC4Dzu8CXW0FOJhJgeETdUkVYW1kmRX9Y2dF0JenWQo
 jXIjUlYZgbzF8baHW5adsWSgLUVfRGFI26MuHrwvDUsVgjh8Bn9D4vD7SozM9cWf7Yiz
 3P4oG3EoIiDEJ9k+bI6a6BkrbvV17DLryVwE/Oug5eOUnm2aM583waVttWPa8TjvrtKq
 y+1RovbIJ8UE55anfWKi0ffEjhAsMvYbmPXiedZ9ogzxQSX9ChNvHXBQMoPD7P+rEVFq
 wNQQpMKkIsMoSt6aSRQ1LwSEidwNtCwvdMA5jnNc9IeiwzqKcm/hPLypyIfVRHnjErGh
 jNjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=6krmeNN+08w4aZmGNN3h+dlYsILeKrK5WU7Jp0wdoWs=;
 b=nbZzHfjKYQ58Yig8Ej4zVMpDJQLl/TsGtQtbXfVDS0gYXxHSudDsiGjaqjYn6LCewk
 F71xDSrJ3CPgh6V0e66xj/r1DutOVUNbeGqgHVQZRr/Jxl5mSNxJMTCoebQQK57PIkV/
 9wJNRC8jslZFXZ5Uh0jUNtatbryAAWL/fPNeJ1dXefb3EyiUBz/XofhWEHe77GdBqCCo
 h5BdM65+VqsPSnPXopepKqnrX8XFcXdMc/YxpvlQT5j/2Gq/UU02G2CarRNHfoBXeIBv
 48lb4MvYbaQ1UcsLyTcUyLaRs53WlYfN2yb5JpYPaO7K6vteyv9tQ68mlwxnZOaLXMyd
 x7RA==
X-Gm-Message-State: APjAAAWDXjP2CBcZZdv6o9rlZi617g/daZXfiiHK+t/L7I9GcLdGFOD4
 MUWBEbzaGGvPXeB87z4xCLyUN01dwR2Mb573PxIpkQ==
X-Google-Smtp-Source: APXvYqxfA11Cj/P5t6E/BwCz45TMQgwxpNrmhfXt/Bmj7bhfEVrZJwXNGi1EQ8ZdkuGkvuFyNbjpm0TLE/b5BEGT9mU=
X-Received: by 2002:a5d:4e50:: with SMTP id r16mr29230086wrt.227.1560850376836; 
 Tue, 18 Jun 2019 02:32:56 -0700 (PDT)
MIME-Version: 1.0
References: <1560745167-9866-1-git-send-email-yash.shah@sifive.com>
 <mvmtvco62k9.fsf@suse.de>
 <alpine.DEB.2.21.9999.1906170252410.19994@viisi.sifive.com>
 <mvmpnnc5y49.fsf@suse.de>
 <alpine.DEB.2.21.9999.1906170305020.19994@viisi.sifive.com>
 <mvmh88o5xi5.fsf@suse.de>
 <alpine.DEB.2.21.9999.1906170419010.19994@viisi.sifive.com>
 <F48A4F7F-0B0D-4191-91AD-DC51686D1E78@sifive.com>
 <d2836a90b92f3522a398d57ab8555d08956a0d1f.camel@wdc.com>
 <alpine.DEB.2.21.9999.1906172019040.15057@viisi.sifive.com>
In-Reply-To: <alpine.DEB.2.21.9999.1906172019040.15057@viisi.sifive.com>
From: Anup Patel <anup@brainfault.org>
Date: Tue, 18 Jun 2019 15:02:45 +0530
Message-ID: <CAAhSdy3zODw=JFaN=2F4K5-umihJDivLO8J8LBdkFkuZgzu41Q@mail.gmail.com>
Subject: Re: [PATCH v2 0/2] Add macb support for SiFive FU540-C000
To: Paul Walmsley <paul.walmsley@sifive.com>,
 "palmer@sifive.com" <palmer@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_023258_547312_C6F18D2A 
X-CRM114-Status: GOOD (  14.77  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 Atish Patra <atish.patra@wdc.com>, "jamez@wit.com" <jamez@wit.com>,
 "ynezz@true.cz" <ynezz@true.cz>,
 "nicolas.ferre@microchip.com" <nicolas.ferre@microchip.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "sachin.ghadi@sifive.com" <sachin.ghadi@sifive.com>,
 "yash.shah@sifive.com" <yash.shah@sifive.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Alistair Francis <Alistair.Francis@wdc.com>,
 Lukas Auer <lukas.auer@aisec.fraunhofer.de>, "schwab@suse.de" <schwab@suse.de>,
 "troy.benjegerdes@sifive.com" <troy.benjegerdes@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Bin Meng <bmeng.cn@gmail.com>, "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

T24gVHVlLCBKdW4gMTgsIDIwMTkgYXQgODo1NiBBTSBQYXVsIFdhbG1zbGV5IDxwYXVsLndhbG1z
bGV5QHNpZml2ZS5jb20+IHdyb3RlOgo+Cj4gT24gTW9uLCAxNyBKdW4gMjAxOSwgQWxpc3RhaXIg
RnJhbmNpcyB3cm90ZToKPgo+ID4gPiBUaGUgbGVnYWN5IE0tbW9kZSBVLWJvb3QgaGFuZGxlcyB0
aGUgcGh5IHJlc2V0IGFscmVhZHksIGFuZCBJ4oCZdmUgYmVlbgo+ID4gPiBhYmxlIHRvIGxvYWQg
dXBzdHJlYW0gUy1tb2RlIHVib290IGFzIGEgcGF5bG9hZCB2aWEgVEZUUCwgYW5kIHRoZW4KPiA+
ID4gbG9hZCBhbmQgYm9vdCBhIDQuMTkga2VybmVsLgo+ID4gPgo+ID4gPiBJdCB3b3VsZCBiZSBu
aWNlIHRvIGdldCB0aGlzIGFsbCB3b3JraW5nIHdpdGggNS54LCBob3dldmVyIHRoZXJlIGFyZQo+
ID4gPiBzdGlsbAo+ID4gPiBzZXZlcmFsIG1pc3NpbmcgcGllY2VzIHRvIHJlYWxseSBoYXZlIGl0
IHdvcmsgd2VsbC4KPiA+Cj4gPiBMZXQgbWUga25vdyB3aGF0IGlzIHN0aWxsIG1pc3NpbmcvZG9l
c24ndCB3b3JrIGFuZCBJIGNhbiBhZGQgaXQuIEF0IHRoZQo+ID4gbW9tZW50IHRoZSBvbmx5IGtu
b3duIGlzc3VlIEkga25vdyBvZiBpcyBhIG1pc3NpbmcgU0QgY2FyZCBkcml2ZXIgaW4gVS0KPiA+
IEJvb3QuCj4KPiBUaGUgRFQgZGF0YSBoYXMgY2hhbmdlZCBiZXR3ZWVuIHRoZSBub24tdXBzdHJl
YW0gZGF0YSB0aGF0IHBlb3BsZQo+IGRldmVsb3BlZCBhZ2FpbnN0IHByZXZpb3VzbHksIHZzLiB0
aGUgRFQgZGF0YSB0aGF0IGp1c3Qgd2VudCB1cHN0cmVhbQo+IGhlcmU6Cj4KPiBodHRwczovL2dp
dC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC90b3J2YWxkcy9saW51eC5naXQv
Y29tbWl0Lz9pZD03MjI5NmJkZTRmNDIwNzU2Njg3MmVlMzU1OTUwYTU5Y2JjMjlmODUyCj4KPiBh
bmQKPgo+IGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3Rv
cnZhbGRzL2xpbnV4LmdpdC9jb21taXQvP2lkPWMzNWYxYjg3ZmM1OTU4MDdmZjE1ZDI4MzRkMjQx
Zjk3NzE0OTcyMDUKPgo+IFNvIFVwc3RyZWFtIFUtQm9vdCBpcyBnb2luZyB0byBuZWVkIHNldmVy
YWwgcGF0Y2hlcyB0byBnZXQgdGhpbmdzIHdvcmtpbmcKPiBhZ2Fpbi4gIENsb2NrIGlkZW50aWZp
ZXJzIGFuZCBFdGhlcm5ldCBhcmUgdHdvIGtub3duIGFyZWFzLgoKRG9uZS4KCkkganVzdCBzZW5k
LW91dCBmZXcgcGF0Y2hlcyB0byBmaXggVS1Cb290IFNpRml2ZSBDbG9jayBkcml2ZXIuCgpUaGUg
VS1Cb290IFNpRml2ZSBDbG9jayBkcml2ZXIgZml4IHNlcmllcyBjYW4gYmUgZm91bmQgaW4Kcmlz
Y3ZfdW5sZWFzaGVkX2Nsa19zeW5jX3YxIGJyYW5jaCBvZjoKaHR0cHM6Ly9naXRodWIuY29tL2F2
cGF0ZWwvdS1ib290LmdpdAoKVXNlcnMgd2lsbCBhbHNvIHJlcXVpcmUgT3BlblNCSSBEVEIgZml4
IHdoaWNoIGNhbiBiZSBmb3VuZAppbiBzaWZpdmVfdW5sZWFzaGVkX2R0Yl9maXhfdjEgYnJhbmNo
IG9mOgpodHRwczovL2dpdGh1Yi5jb20vYXZwYXRlbC9vcGVuc2JpLmdpdAoKV2l0aCBhYm92ZSBm
aXhlcywgd2UgY2FuIG5vdyB1c2Ugc2FtZSBEVEIgZm9yIGJvdGggVS1Cb290CmFuZCBMaW51eCBr
ZXJuZWwgKDUuMi1yYzEpLiBBbHRob3VnaCwgdXNlcnMgYXJlIGZyZWUgdG8gcGFzcyBhCmRpZmZl
cmVudCBEVEIgdG8gTGludXgga2VybmVsIHZpYSBURlRQLgoKSSBoYXZlIHRlc3RlZCBTaUZpdmUg
c2VyaWFsIGFuZCBDYWRhbmNlIE1BQ0IgZXRoZXJuZXQgb24KYm90aCBVLUJvb3QgYW5kIExpbnV4
ICg1LjItcmMxKQoKUmVnYXJkcywKQW51cAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtcmlzY3YgbWFpbGluZyBsaXN0CmxpbnV4LXJpc2N2QGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yaXNjdgo=
